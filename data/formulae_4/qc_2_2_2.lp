% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['release_a']})
domain("A",er_sepsis_triage).
domain("A",return_er).
domain("B",release_a).
domain("B",release_c).
root((and,(choice,(A,crp,)),(notprecedence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
