import os
import random
from collections import defaultdict

from cformulae.backend.log import parse_log, parse_log_discrim
from cformulae.backend import TemplateBackend, LogContext, load_declare
from pathlib import Path
import clingo
from loguru import logger


def discriminative_discovery(log, formulae, min_support, max_cardinality, random_labels=(None,None), logging=False):
    symbol_table, trace_atoms, variants = parse_log(log)

    load_declare()

    log_length = 0
    for _, (_, count) in variants.items():
        log_length += count

    if logging:
        logger.info(f"List of available templates: {TemplateBackend.available_templates()}")

    ctl = clingo.Control(["-c", f"m={max_cardinality}"])
    ctl.load(formulae)
    ctl.add("base", [], "\n".join(t for t in trace_atoms))
    ctl.load((Path(__file__).parent / 'encodings' / 'discriminative_discovery.lp').as_posix())

    generate_labels, num_partitions = random_labels
    partitions_size = defaultdict(lambda: 0, dict())
    if generate_labels:
        for tid in variants.keys():
            partition = random.choice(range(num_partitions))
            ctl.add("base", [], f"label({tid}, {partition}).")
            partitions_size[partition] += variants[tid][1]
        for partition, size in partitions_size.items():
            ctl.add("base", [], f"threshold({partition}, {int(size * min_support)}).")

    context = LogContext(symbol_table, variants, logging)
    ctl.ground([("base", [])], context=context)

    ans = ctl.solve(yield_=True)
    with ans:
        if ans.get().satisfiable:
            return True, ans.model().symbols(shown=True)
        return False, None

