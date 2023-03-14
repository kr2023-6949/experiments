import random
import string
import re
import nltk
from nltk import PCFG

COMPLETE_TREE_GRAMMAR = """
E -> '(and,' E ',' E ')' [0.50]
E -> '(or,' E ',' E ')' [0.50]
"""

CONFORMANCE_CHECKING_EXPERIMENT_GRAMMAR = """
E -> '(and,' E ',' E ')' [0.40]
E -> '(or,' E ',' E ')' [0.40]
E -> '(neg,' E ')' [0.20]
"""

QUERY_CHECKING_EXPERIMENT_GRAMMAR = """
E -> '(and,' E ',' E ')' [1.0]
"""


def loopy(x):
    idx = 0
    while True:
        yield x[idx]
        idx += 1
        if idx >= len(x):
            idx = 0


def exhaust(x):
    idx = 0
    while True:
        if idx >= len(x):
            yield None
        else:
            yield x[idx]
            idx += 1


def build_pcfg(grammar):
    return PCFG.fromstring("\n".join(x.strip() for x in grammar.split('\n')))


def generate_random(grammar, symbol, constraints, depth, max_depth):
    if isinstance(symbol, str):
        return [symbol]

    if symbol == nltk.Nonterminal("E"):
        if depth >= max_depth:
            random_constraint = next(constraints)
            template = random_constraint[0]
            activities = random_constraint[1]
            return [f"({template},({','.join(activities)},))"]

        productions = grammar.productions(lhs=symbol)
        probabilities = [p.prob() for p in productions]
        sampled = random.choices(productions, probabilities, k=1)[0]
        return sum([generate_random(grammar, sym, constraints, depth+1, max_depth) for sym in sampled.rhs()], [])


def generate_sentences(grammar_string, n, constraints, max_depth):
    grammar = build_pcfg(grammar_string)
    constraints_generator = loopy(constraints)
    return [''.join(generate_random(grammar, grammar.start(), constraints_generator, 0, max_depth)) for _ in range(n)]