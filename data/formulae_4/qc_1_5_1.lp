% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",release_a).
domain("A",return_er).
domain("A",release_b).
domain("A",release_c).
root((respondedexistence,(A,er_registration,))) :- iota("A",A).
