from cformulae.parsers.model import *
from cformulae.parsers.tokens import *
from pathlib import Path
from lark import Lark, Token
from lark import Transformer


class STermTransformer(Transformer):
    def __init__(self, known_templates=None, known_activities=None, **kwargs):
        super().__init__(**kwargs)

    def ACTIVITY_CONSTANT(self, token: Token):
        # TODO: Validate it is a valid activitity!
        return Constant(token.value.strip())

    def TEMPLATE_CONSTANT(self, token: Token):
        # TEMPLATE_CONSTANT: /[a-z_\s]+/
        # TODO: Validate it is a valid template, loaded in the backends!
        return Constant(token.value.strip())

    def ACTIVITY_VARIABLE(self, token: Token):
        # ACTIVITY_VARIABLE: VARIABLE_IDENTIFIER
        # TODO: Validate no collisions on template variables
        return Variable(token.value.strip())

    def TEMPLATE_VARIABLE(self, token: Token):
        # TEMPLATE_VARIABLE: VARIABLE_IDENTIFIER
        # TODO: Validate no collisions on activity variables
        return Variable(token.value.strip())

    def activity_term_list(self, nodes):
        # activity_term_list: ((ACTIVITY_CONSTANT | ACTIVITY_VARIABLE) ",")* (ACTIVITY_CONSTANT | ACTIVITY_VARIABLE)
        return tuple(nodes)

    def constraint_term(self, nodes):
        template, activities = nodes
        # constraint_term: (TEMPLATE_CONSTANT | TEMPLATE_VARIABLE) "(" activity_term_list ")"
        # TODO: Validate length of activities matches arity of the template
        return ConstraintTerm(
            template,
            activities
        )

    def wrap_expression(self, nodes):
        # wrap_expression: "(" expression ")"
        return nodes[0]

    def unary_expression(self, nodes):
        # unary_expression: UNARY_OP expression
        op, sub = nodes
        if op == InputTokens.NOT:
            return Negate(sub)
        return NotImplementedError

    def binary_expression(self, nodes):
        # binary_expression: expression BINARY_OP expression
        lhs, op, rhs = nodes

        if op == InputTokens.AND:
            return And(lhs, rhs)
        elif op == InputTokens.OR:
            return Or(lhs, rhs)
        elif op == InputTokens.EXCLUSIVE_OR:
            # TODO: Implement ad hoc class?
            return Or(And(lhs,Negate(rhs)), And(Negate(lhs),rhs))
        elif op == InputTokens.IMPLIES:
            # TODO: Implement ad hoc class?
            return Or(Negate(lhs), And(lhs, rhs))
        elif op == InputTokens.EQUALS:
            # TODO: Implement ad hoc class?
            return Or(And(lhs,rhs), And(Negate(lhs),Negate(rhs)))

        raise NotImplementedError

    def expression(self, nodes):
        return nodes[0]

    def formula(self, nodes):
        return FormulaRoot(nodes[0])


class ConstraintFormulaParser:
    __lark_instance__ = None

    @staticmethod
    def parser():
        if ConstraintFormulaParser.__lark_instance__ is None:
            grammar = Path(__file__).parent / "grammars/constraint_formulae.lark"
            ConstraintFormulaParser.__lark_instance__ = Lark.open(
                grammar.as_posix(),
                start="formula",
                parser="lalr"
            )
        return ConstraintFormulaParser.__lark_instance__


def parse_constraint_formula(expression, known_templates=None, known_activities=None):
    syntax_tree = ConstraintFormulaParser.parser().parse(expression)
    root = STermTransformer(known_templates, known_activities).transform(syntax_tree)
    variables = root.variables

    head = f"root({root.cformula.asp_term})"

    if len(variables) == 0:
        return head + "."

    body = ",".join(v.iota_term for v in variables)

    return f"{head} :- {body}."

