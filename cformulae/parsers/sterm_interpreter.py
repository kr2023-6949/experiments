# TODO: Something to parse back from S-terms to strings...
from pathlib import Path

from lark import Lark
from lark.visitors import Interpreter

from cformulae.parsers.model import And, Or, Negate, ConstraintTerm, Constant

"""
TEMPLATE_NAME: /[a-z_]+/
ACTIVITY_NAME: /[a-z_]+/
ASP_VARIABLES: /[A-Z_]+/


%import common.WS
%ignore WS
"""


class STermInterpreter(Interpreter):
    def expression(self, tree):
        # expression: and_op | or_op | not_op | leaf_op
        return self.visit(tree.children[0])

    def and_op(self, tree):
        # and_op: "(and," expression "," expression ")"
        lhs, rhs = tree.children
        return And(self.visit(lhs), self.visit(rhs))

    def or_op(self, tree):
        # or_op: "(or," expression "," expression ")"
        lhs, rhs = tree.children
        return Or(self.visit(lhs), self.visit(rhs))

    def not_op(self, tree):
        # not_op: "(not_," expression ")"
        return Negate(self.visit(tree.children[0]))

    def leaf_op(self, tree):
        # leaf_op: "(" (TEMPLATE_NAME | ASP_VARIABLES) "," (ACTIVITY_NAME | ASP_VARIABLES) ("," (ACTIVITY_NAME | ASP_VARIABLES))* ")"
        template = tree.children[0]
        activities = tree.children[1:]
        return ConstraintTerm(
            Constant(template.value),
            tuple(Constant(x.value) for x in activities)
        )


class STermParser:
    __lark_instance__ = None

    @staticmethod
    def parser():
        if STermParser.__lark_instance__ is None:
            grammar = Path(__file__).parent / "grammars/s_terms.lark"
            STermParser.__lark_instance__ = Lark.open(
                grammar.as_posix(),
                start="expression",
                parser="lalr"
            )
        return STermParser.__lark_instance__


def parse_sterm(sterm):
    syntax_tree = STermParser.parser().parse(sterm)
    formula = STermInterpreter().visit(syntax_tree)
    return formula


if __name__ == '__main__':
    print(parse_sterm("(and,(response,(er_triage,crp)),(or,(chainresponse,(er_triage,crp)),(alternateresponse,(er_triage,crp))))"))
    print(parse_sterm("(not_,(x,(y,)))"))