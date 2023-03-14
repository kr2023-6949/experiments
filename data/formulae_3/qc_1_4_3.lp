% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",admission_nc).
domain("A",release_b).
domain("A",release_d).
root((choice,(A,iv_antibiotics,))) :- iota("A",A).
