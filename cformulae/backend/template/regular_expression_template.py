from functools import lru_cache

from cformulae.backend.template import remap_trace
from cformulae.backend.template import Template
import regex


class RegularExpression(Template):
    def __init__(self, expression, params):
        super().__init__(len(params))
        self.dfa = regex.compile(expression, flags=regex.VERSION1)
        self.params = params
        self.expression = expression

    @lru_cache(maxsize=None)
    def check(self, trace, params):
        translation = remap_trace(trace, params, self.params, '@')
        return self.dfa.fullmatch(translation) is not None

    def __repr__(self):
        expression=self.expression
        params=self.params
        return f"RegularExpression[{expression=}, {params=}]"

    @staticmethod
    def load(json_metadata):
        assert json_metadata['type'] == 're'
        return RegularExpression(json_metadata['template']['expression'], json_metadata['template']['params'])


