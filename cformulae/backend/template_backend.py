from functools import lru_cache
from pathlib import Path

import clingo

from cformulae.backend.template import Template, RegularExpression, LTLf, PythonFunction
from loguru import logger


class LogContext:
    def __init__(self, symbol_table, variants, logging=False):
        self.symbol_table = symbol_table
        self.variants = variants
        self.logging = logging

    @lru_cache(maxsize=None)
    def atomic_check(self, constraint_symbol: clingo.Function):
        if self.logging:
            logger.info(f"Performing atomic conformance checking on {str(constraint_symbol)}")
        template = constraint_symbol.arguments[0].name
        params = tuple(self.symbol_table[x.name] for x in constraint_symbol.arguments[1].arguments)

        conformant_traces = 0
        return_terms = []
        checker = TemplateBackend.templates[template]
        if self.logging:
            logger.info(f"Retrieved the Template {checker}")
        for tid, (trace, count) in self.variants.items():
            if checker.check(trace, params):
                return_terms.append(clingo.Number(tid))
                conformant_traces += count

        if self.logging:
            logger.info(f"I produced {len(return_terms)} trace terms!")
        return return_terms


def load_declare():
    def parse_declare_rule(rule):
        # ChainSuccession(a,b):[^ab]*(ab[^ab]*)*[^ab]*
        template_schema, regular_expression = rule.split(':')
        template_name, params = template_schema.split('(', 1)
        template_name = template_name.lower()
        params = params[:-1].split(',')

        return template_name, regular_expression, params

    path = Path(__file__).parent / "declare/minerful_templates.txt"
    for rule in path.open().readlines():
        name, regular_expression, params = parse_declare_rule(rule.strip())
        TemplateBackend.register_template(name, RegularExpression(regular_expression, params))


class TemplateBackend:
    # TODO: Rework - E.g. want to avoid re-compiling DFAs to check the same regexp...
    str2cls = {
        "re": RegularExpression,
        "ltlf": LTLf,
        "py": PythonFunction
    }

    templates = dict()

    @staticmethod
    def register_template(identifier: str, template: Template):
        TemplateBackend.templates[identifier] = template

    @staticmethod
    def available_templates():
        return TemplateBackend.templates.keys()

    @staticmethod
    def check_constraint(template_name, trace, params):
        return TemplateBackend.templates[template_name].check(trace, params)

    @staticmethod
    def load(json_metadata):
        cls = TemplateBackend.str2cls[json_metadata['type']]
        name = json_metadata['name']
        template = cls.load(json_metadata)
        TemplateBackend.register_template(name, template)
        return template