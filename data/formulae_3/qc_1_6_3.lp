% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("A",release_a).
domain("A",release_c).
domain("A",lacticacid).
domain("A",admission_nc).
root((choice,(A,iv_antibiotics,))) :- iota("A",A).
