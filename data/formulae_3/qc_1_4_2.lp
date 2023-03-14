% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['lacticacid']})
domain("A",lacticacid).
domain("A",release_b).
domain("A",iv_liquid).
domain("A",release_e).
root((choice,(A,er_sepsis_triage,))) :- iota("A",A).
