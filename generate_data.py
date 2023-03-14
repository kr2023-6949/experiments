import os
import string
from argparse import ArgumentParser
from collections import defaultdict
from random import choice
import random
from cformulae.parsers import parse_constraint_formula
from cformulae.dataset_generation import discover_atomic_constraints, generate_sentences, \
    CONFORMANCE_CHECKING_EXPERIMENT_GRAMMAR, \
    COMPLETE_TREE_GRAMMAR

import pm4py


def build_constraint_term(c):
    template_name = c[0]
    activities = c[1]
    return f"{template_name}({','.join(activities)})"

def activity_names(log):
    def clean(s):
        return '_'.join(s.lower().split(' '))

    activities = pm4py.get_event_attribute_values(log, "concept:name").keys()
    return [clean(x) for x in activities]


def generate_query_formulae(
        activities,
        safe_constraints,
        num_variables,
        domain_cardinalities,
        samples,
        output_directory
):
    for idx in range(samples):
        for n in num_variables:
            variables = string.ascii_uppercase[:n]
            constraints = random.sample(safe_constraints, k=n)
            replacements = defaultdict(lambda: list(), dict())

            constraints_to_join = []
            for var_id, constraint in zip(variables, constraints):
                replacements[var_id].append(constraint[1][0])
                template_name = constraint[0]
                constraint_activities = [x for x in constraint[1]]
                constraint_activities[0] = var_id
                constraints_to_join.append(
                    tuple([template_name, tuple([x for x in constraint_activities])])
                )

            formula = parse_constraint_formula(" & ".join(build_constraint_term(c) for c in constraints_to_join))
            for k in domain_cardinalities:
                domains = []
                for variable in variables:
                    domain = list(set(replacements[variable]))
                    to_sample = k - len(domain)
                    new_domain = random.sample(list(set(activities).difference(domain)), k=to_sample)
                    domains.extend([f"domain(\"{variable}\",{x})." for x in domain + new_domain])

                with open(os.path.join(output_directory, f"qc_{n}_{k}_{idx}.lp"), "w") as f:
                    print("%", replacements, file=f)
                    print("\n".join(domains), file=f)
                    print(formula, file=f)


def generate_cf_formulae(num_formulae, depths, samples, constraints, grammar, output_dir):
    for idx in range(samples):
        for n in num_formulae:
            for depth in depths:
                formulae = generate_sentences(grammar, n, constraints, depth)

                filename = f"cf_{n}_{depth}_{idx}.lp"

                with open(os.path.join(output_dir, filename), 'w') as f:
                    for formula in formulae:
                        print(f"root({formula}).", file=f)


if __name__ == '__main__':
    parser = ArgumentParser()
    parser.add_argument("log", type=str, help="Path of a XES file")
    parser.add_argument("output_dir", type=str, help="Output folder that will store the formulae")

    args = parser.parse_args()
    print(args)

    log = pm4py.read_xes(args.log, return_legacy_log_object=True)
    activities = activity_names(log)
    print(len(activities))

    unsafe_constraints, safe_constraints = discover_atomic_constraints(log, 0.2, discover_safe=True)
    print("Number unsafe constraints:", len(unsafe_constraints))
    print("Number safe constraints:", len(safe_constraints))

    unsafe_constraints = sorted(unsafe_constraints, key=lambda x: random.random())
    safe_constraints = sorted(safe_constraints, key=lambda x: random.random())

    # Conformance Checking Formulae
    # generate_cf_formulae([1], range(2, 13), 30, safe_constraints + unsafe_constraints, COMPLETE_TREE_GRAMMAR, args.output_dir)
    # generate_cf_formulae(range(20, 201, 20), range(2, 6), 30, safe_constraints + unsafe_constraints, CONFORMANCE_CHECKING_EXPERIMENT_GRAMMAR, args.output_dir)

    # Conformance Checking Formulae
    # 60
    # generate_cf_formulae([1], range(2, 13), 5, safe_constraints + unsafe_constraints, COMPLETE_TREE_GRAMMAR, args.output_dir)
    # 250 
    generate_cf_formulae(range(10, 81, 10), range(2, 6), 5, safe_constraints + unsafe_constraints, COMPLETE_TREE_GRAMMAR, args.output_dir)

    # Query Checking Formulae
    generate_query_formulae(activities, safe_constraints, [1, 2, 3, 4], [2, 3, 4, 5, 6], 5,  args.output_dir)

