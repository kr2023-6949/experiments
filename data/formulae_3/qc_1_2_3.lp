% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",leucocytes).
root((choice,(A,iv_antibiotics,))) :- iota("A",A).
