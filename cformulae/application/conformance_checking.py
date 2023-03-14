import os

from cformulae.backend.log import parse_log
from cformulae.backend import TemplateBackend, LogContext, load_declare
from pathlib import Path
import clingo
from loguru import logger


def conformance_checking(log, formulae, logging=False):
    symbol_table, trace_atoms, variants = parse_log(Path(log))

    if logging:
        logger.info(f"List of available templates: {TemplateBackend.available_templates()}")

    load_declare()

    ctl = clingo.Control()
    ctl.add("base", [], "\n".join(t for t in trace_atoms))
    ctl.load(formulae)
    ctl.load((Path(__file__).parent / 'encodings' / 'conformance_checking.lp').as_posix())

    context = LogContext(symbol_table, variants, logging)
    ctl.ground([("base", [])], context=context)

    ans = ctl.solve(yield_=True)
    with ans:
        if ans.get().satisfiable:
            return True, ans.model().symbols(shown=True)
        return False, None

