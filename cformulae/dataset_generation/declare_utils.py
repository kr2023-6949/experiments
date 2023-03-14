from declare4py.declare4py import Declare4Py
from pm4py import read_xes


def decl_to_lowercase(decl_constraint):
    def fix(token, sep):
        return sep.join(x.lower() for x in token.split(' '))

    template_args, cond = decl_constraint.split("]",1)
    template_name, args = template_args.split("[",1)
    template_name = fix(template_name.strip(), '')
    activities = [fix(a.strip(), '_') for a in args.split(',')]

    return tuple([template_name, tuple(x for x in activities)])


def discover_atomic_constraints(log, minimum_support, discover_safe=True):
    d4py = Declare4Py()
    d4py.log = log #read_xes(log, return_legacy_log_object=True)
    d4py.compute_frequent_itemsets(min_support=minimum_support)
    result = d4py.discovery(consider_vacuity=True, max_declare_cardinality=1)
    result = d4py.filter_discovery(minimum_support)

    if not discover_safe:
        return tuple(decl_to_lowercase(x) for x in result.keys())

    result_safe = d4py.filter_discovery(1.0)
    return tuple(decl_to_lowercase(x) for x in result.keys()), tuple(decl_to_lowercase(x) for x in result_safe.keys())
