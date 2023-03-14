from functools import lru_cache


class Template:
    def __init__(self, arity):
        self.arity = arity

    @lru_cache(maxsize=None)
    def check(self, trace, params):
        assert len(params) == self.arity

    @staticmethod
    def load(json_metadata):
        raise NotImplementedError
