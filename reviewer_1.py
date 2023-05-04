import time
from declare4py.declare4py import Declare4Py
from declare4py.declare4py import parse_decl_from_string
from declare4py.declare4py import DeclModel
import pm4py
import sys
from string import ascii_uppercase
from dataclasses import dataclass
import json
from typing import List
import re
from cformulae.application import conformance_checking

import warnings
warnings.filterwarnings("ignore")

def uncamel(string):
	return ' '.join(re.findall('[A-Z][^A-Z]*', string))

@dataclass(frozen=True)
class MINERfulConstraint:
	template: str
	parameters: List[str]
	support: float
	confidence: float
	interest: float

	@staticmethod
	def parse_from_json(data):
		return MINERfulConstraint(
			data['template'],
			[x[0] for x in data['parameters']],
			data['support'],
			data['confidence'],
			data['interestFactor']
		)

	@staticmethod
	def parse_from_decl(line):
		template, activities_and_trash = line.split('[',1)
		template = ''.join(t.strip() for t in template.split(' '))
		activities = activities_and_trash.split(']',1)[0].split(',')
		activities = [t.strip() for t in activities]

		return MINERfulConstraint(
			template,
			activities,
			0.0,
			0.0,
			0.0
		)

	def decl(self):
		return "{}[{}] | |".format(uncamel(self.template), ', '.join(self.parameters))

	def as_d4py_model(self):
		model = parse_decl_from_string(self.decl())
		return model

	def as_sterm(self):
		decl = self.decl()
		template, activities_and_trash = decl.split('[', 1)
		template = ''.join(t.strip().lower() for t in template.split(' '))

		activities = activities_and_trash.split(']', 1)[0].split(',')
		activities = ['_'.join(x.lower().strip() for x in a.strip().split(' ')) for a in activities]

		return "({},({},))".format(template, ','.join(activities))


def parse_minerful_json(decl_json_path):
	with open(decl_json_path, 'r') as f:
		model = json.load(f)['constraints']
		model = [MINERfulConstraint.parse_from_json(x) for x in model]

	return model

def parse_rum_decl(decl_path):
	with open(decl_path, 'r') as f:
		model = [MINERfulConstraint.parse_from_decl(line.strip()) for line in f.readlines() if not line.startswith('activity')]

	return model

def merge(terms):
	if len(terms) == 1:
		term = terms[0]
		return "(and,{},{})".format(term, term)

	if len(terms) == 2:
		a, b = terms
		return "(and,{},{})".format(a, b)

	L = len(terms)
	lhs = terms[:L//2]
	rhs = terms[L//2:]
	return "(and,{},{})".format(merge(lhs), merge(rhs))


if __name__ == '__main__':
	"""
	Compare time to conformance check a MINERful Declare model by means of:
	  - Declare4Py conformance checking APIs
	  - Constraint Formulae ASP encoding
	"""

	input_model = parse_rum_decl('author_response_data/sepsis.decl')

	formula_terms = []
	d4py_model = []

	start_model = time.time()
	start = time.time()
	for constraint in input_model:
		model = constraint.as_d4py_model()
		if len(model.checkers) >= 1:
			d4py_model.append(model.checkers[0])
			formula_terms.append(constraint.as_sterm)

	d4py_model_time = time.time() - start_model

	decl_model = DeclModel()
	decl_model.checkers = d4py_model
	decl_model.set_constraints()

	print("Number of constraints in the model accepted by both Declare4Py and MINERful/RuM:", len(d4py_model), "out of", len(input_model))

	start = time.time()
	log = pm4py.read_xes('author_response_data/sepsis.xes', return_legacy_log_object=True)
	d4py_parse = time.time() - start

	#### SETTING D4PY MODEL
	d4py = Declare4Py()
	d4py.log = log
	d4py.log_length = len(log)
	d4py.model = decl_model
	res = d4py.conformance_checking(False)
	d4py_time = time.time()-start

	start_model = time.time()
	formula = merge([x.as_sterm() for x in input_model])
	cf_model_time = time.time()-start_model

	start = time.time()
	with open('/tmp/__reviewer_1__.lp', 'w') as f:
		f.write("root({}).".format(formula))
	ans = conformance_checking('author_response_data/sepsis.xes', '/tmp/__reviewer_1__.lp', logging=False)
	cf_time = time.time()-start

	print(f"Elapsed time for D4Py conformance checking: {(d4py_time - d4py_parse):.3f}s [parsing: {d4py_parse:.3f}]. Model built in {d4py_model_time:.3f}s.")
	print(f"Elapsed time for Constraint Formulae conformance checking: {cf_time:.3f}s. Formula built in {cf_model_time:.3f}s.")
