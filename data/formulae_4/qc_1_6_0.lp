% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a']})
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("A",crp).
domain("A",release_c).
domain("A",er_triage).
domain("A",return_er).
root((notprecedence,(A,iv_liquid,))) :- iota("A",A).
