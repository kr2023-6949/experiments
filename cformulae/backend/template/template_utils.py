from typing import List
from string import ascii_lowercase


def remap_trace(trace: str, params_1: List[str], params_2: List[str], placeholder: str):
    assert len(params_2) == len(params_1)
    mapping = {
        ord(x): ord(placeholder) for x in ascii_lowercase
    }

    for x, y in zip(params_1, params_2):
        mapping[ord(x)] = ord(y)

    return trace.translate(mapping)

