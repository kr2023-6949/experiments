% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['release_a']})
domain("A",er_sepsis_triage).
domain("A",release_d).
domain("A",leucocytes).
domain("A",lacticacid).
domain("A",admission_nc).
domain("B",release_a).
domain("B",release_e).
domain("B",crp).
domain("B",return_er).
domain("B",lacticacid).
root((and,(choice,(A,crp,)),(notprecedence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
