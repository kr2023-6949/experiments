from functools import lru_cache

from cformulae.backend.template import Template
from cformulae.backend.template import remap_trace
from flloat.parser.ltlf import LTLfParser


class LTLf(Template):
    parser = LTLfParser()

    def __init__(self, expression, params):
        super().__init__(len(params))
        self.params = params
        self.dfa = LTLf.parser(expression).to_automaton()

    @lru_cache(maxsize=None)
    def check(self, trace, params):
        print(params, self.params)
        translation = remap_trace(trace, params, self.params, "@")
        return self.dfa.accepts([{x: True} for x in translation])

    @staticmethod
    def load(json_metadata):
        assert json_metadata['type'] == 'ltlf'
        return LTLf(json_metadata['template']['expression'], json_metadata['template']['params'])
