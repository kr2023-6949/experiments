import os

from cformulae.backend.log import parse_log
from cformulae.backend import TemplateBackend, LogContext, load_declare
from pathlib import Path
import clingo
from loguru import logger
import time


def query_checking(log, formulae, support_threshold, simple=True, logging=False):
    symbol_table, trace_atoms, variants = parse_log(Path(log))

    log_length = 0
    for _, (_, count) in variants.items():
        log_length += count

    load_declare()

    if logging:
        logger.info(f"List of available templates: {TemplateBackend.available_templates()}")

    ctl = clingo.Control(["-c", f"support_threshold={int(support_threshold * log_length)}"])
    ctl.add("base", [], "\n".join(t for t in trace_atoms))
    ctl.load(formulae)
    ctl.load((Path(__file__).parent / 'encodings' / ('query_checking.lp' if not simple else 'query_checking_simple.lp')).as_posix())

    context = LogContext(symbol_table, variants, logging)
    ctl.ground([("base", [])], context=context)

    ans = ctl.solve(yield_=True)

    with ans:
        if ans.get().satisfiable:
            return True, ans.model().symbols(shown=True)
        return False, None

