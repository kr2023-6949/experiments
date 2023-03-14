import string
from collections import defaultdict
from typing import List

import clingo as clingo
import pm4py
from pathlib import Path
from bidict import frozenbidict


def clean_name(name):
    # TODO: Handle crazy things in the data
    return "_".join(name.lower().split(' '))


def encode_variant(symbol_table, control_flow):
    # TODO: Raise errors, unknown symbols
    return ''.join(symbol_table[x] for x in control_flow)


def decode_variant(symbol_table, control_flow):
    # TODO: Raise errors, unknown symbols
    return ''.join(symbol_table.inv[x] for x in control_flow)


def parse_log(path: Path):
    """
    Returns an EventLog object from a given Path.
    """
    if not path.exists():
        raise FileNotFoundError

    log = pm4py.read_xes(path.as_posix())

    # Activity names become logic programming friendly
    activities = pm4py.get_event_attribute_values(log, "concept:name")

    activities_clean = tuple(clean_name(x) for x in activities)
    activities_clean = list(sorted(activities_clean))

    # activity_name <-> symbol
    symbol_table = frozenbidict(
        # TODO: Wha tis >= 26 activities? -> string.ascii_letters? string.ascii_printable?
        {activity: symbol for activity, symbol in zip(activities_clean, string.ascii_lowercase)}
    )

    # trace_id <-> trace_string
    variants = dict()
    log_atoms = []

    all_variants = sorted(pm4py.get_variants(log).items(), key=lambda x: x[0])
    for tid, (variant, count) in enumerate(all_variants):
        variant_clean = tuple(clean_name(x) for x in variant)
        control_flow_string = encode_variant(symbol_table, variant_clean)
        log_atoms.append(f"trace({tid},{count}).")
        variants[tid] = (control_flow_string, count)

    for activity in symbol_table.keys():
        log_atoms.append(f"activity({activity}).")

    return symbol_table, log_atoms, variants


def get_label_from_log_name(filename):
    no_ext = filename.split('.')[0]
    return no_ext.split('_')[-1]

def parse_log_discrim(paths: List[Path], supp_threshold):
    for path in paths:
        if not path.exists():
            raise FileNotFoundError

    logs = [pm4py.read_xes(path.as_posix()) for path in paths]
    labels = [get_label_from_log_name(path.name) for path in paths]

    # Activity names become logic programming friendly
    activities = []
    for log in logs:
        log_activities = pm4py.get_event_attribute_values(log, "concept:name")

        activities.extend(log_activities)

    activities_clean = tuple(clean_name(x) for x in activities)
    activities_clean = list(sorted(set(activities_clean)))

    # activity_name <-> symbol
    symbol_table = frozenbidict(
        # TODO: Wha tis >= 26 activities? -> string.ascii_letters? string.ascii_printable?
        {activity: symbol for activity, symbol in zip(activities_clean, string.ascii_lowercase)}
    )

    # trace_id <-> trace_string
    variants = dict()
    log_atoms = []

    variant_labels = defaultdict(lambda: [], dict())
    variant_counts = dict()
    for path, log in zip(paths, logs):
        label = get_label_from_log_name(path.name)
        log_variants = pm4py.get_variants(log)
        for (variant, count) in log_variants.items():
            variant_clean = tuple(clean_name(x) for x in variant)
            control_flow_string = encode_variant(symbol_table, variant_clean)
            variant_labels[control_flow_string].append(label)
            variant_counts[control_flow_string] = count

    all_variants = sorted(variant_labels.keys())
    total_log_length = 0
    partitions_sizes = defaultdict(lambda: 0, dict())
    for tid, variant in enumerate(all_variants):
        if len(variant_labels[variant]) > 1:
            # Discard trace - unfit for control-flow discriminative discovery
            pass
        else:
            count = variant_counts[variant]
            log_atoms.append(f"trace({tid},{count}).")
            total_log_length += count
            variants[tid] = (variant, count)
            label = variant_labels[variant][0]
            partitions_sizes[label] += count
            log_atoms.append(f"label({tid},{label}).")

    for activity in symbol_table.keys():
        log_atoms.append(f"activity({activity}).")

    for label, log in zip(labels, logs):
        log_atoms.append(f"threshold({label},{int(supp_threshold * partitions_sizes[label])}).")

    return symbol_table, log_atoms, variants
