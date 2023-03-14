from dataclasses import dataclass
from typing import Union, Tuple
from functools import cached_property

from cformulae.parsers.tokens import LPTokens, InputTokens


@dataclass(frozen=True)
class Variable:
    value: str

    @property
    def asp_term(self):
        return self.value

    @property
    def iota_term(self):
        return f"iota(\"{self.value}\",{self.value})"

    @property
    def domain_term(self):
        return f"domain(\"{self.value}\",{self.value})"


@dataclass(frozen=True)
class Constant:
    value: str

    @property
    def asp_term(self):
        # TODO: Cambiare grammatica per gestire stringhe escapate, con spazi
        #return "\"{}\"".format(self.value)
        return "{}".format(self.value)


@dataclass(frozen=True)
class CFormula:

    @cached_property
    def asp_term(self):
        raise NotImplementedError

    @cached_property
    def variables(self):
        raise NotImplementedError

    def __repr__(self):
        return self.__str__()

    def __str__(self):
        raise NotImplementedError


@dataclass(frozen=True)
class FormulaRoot:
    cformula: CFormula

    @cached_property
    def variables(self):
        return self.cformula.variables


@dataclass(frozen=True)
class ConstraintTerm(CFormula):
    template: Union[Constant, Variable]
    params: Tuple[Union[Constant, Variable], ...]

    @cached_property
    def asp_term(self):
        params_terms = ",".join(p.asp_term for p in self.params)
        return "{}({},{})".format(
            LPTokens.ANONYMOUS_TUPLE_NAME,
            self.template.asp_term,
            "{}({},)".format(LPTokens.ANONYMOUS_TUPLE_NAME, params_terms)
        )

    @cached_property
    def variables(self):
        return set(x for x in self.params if isinstance(x, Variable))

    def __str__(self):
        return "{}({})".format(self.template.value, ",".join(x.value for x in self.params))

@dataclass(frozen=True)
class And(CFormula):
    lhs: CFormula
    rhs: CFormula

    @cached_property
    def asp_term(self):
        return "{}({},{},{})".format(
            LPTokens.ANONYMOUS_TUPLE_NAME,
            LPTokens.AND,
            self.lhs.asp_term,
            self.rhs.asp_term
        )

    @cached_property
    def variables(self):
        return self.lhs.variables.union(self.rhs.variables)

    def __str__(self):
        return "({} & {})".format(str(self.lhs), str(self.rhs))

@dataclass(frozen=True)
class Or(CFormula):
    lhs: CFormula
    rhs: CFormula

    @cached_property
    def asp_term(self):
        return "{}({},{},{})".format(
            LPTokens.ANONYMOUS_TUPLE_NAME,
            LPTokens.OR,
            self.lhs.asp_term,
            self.rhs.asp_term
        )

    @cached_property
    def variables(self):
        return self.lhs.variables.union(self.rhs.variables)

    def __str__(self):
        return "({} | {})".format(str(self.lhs), str(self.rhs))

@dataclass(frozen=True)
class Negate(CFormula):
    f: CFormula

    @cached_property
    def asp_term(self):
        return "{}({},{})".format(
            LPTokens.ANONYMOUS_TUPLE_NAME,
            LPTokens.NOT,
            self.f.asp_term
        )

    @cached_property
    def variables(self):
        return self.f.variables

    def __str__(self):
        return "~({})".format(str(self.f))

@dataclass(frozen=True)
class ExclusiveOr(CFormula):
    lhs: CFormula
    rhs: CFormula

    def __post_init__(self):
        raise NotImplementedError

@dataclass(frozen=True)
class Equals(CFormula):
    lhs: CFormula
    rhs: CFormula

    def __post_init__(self):
        raise NotImplementedError

@dataclass(frozen=True)
class Implies(CFormula):
    lhs: CFormula
    rhs: CFormula

    def __post_init__(self):
        raise NotImplementedError