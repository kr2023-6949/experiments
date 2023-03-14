from functools import lru_cache

from cformulae.backend.template import Template
import importlib


class PythonFunction(Template):
    def __init__(self, arity, func):
        super().__init__(arity)
        self.check = func

    @lru_cache(maxsize=None)
    def check(self, trace, params):
        raise RuntimeError("No monkey patching!?")

    @staticmethod
    def load(json_metadata):
        assert json_metadata['type'] == 'py'

        module = json_metadata['template']['module_path']
        fname = json_metadata['template']['function_name']

        external_module = importlib.import_module(module)
        func = getattr(external_module, fname)
        del external_module

        return PythonFunction(json_metadata['arity'], func)

