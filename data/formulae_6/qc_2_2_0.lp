% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_registration'], 'B': ['crp']})
domain("A",er_registration).
domain("A",er_triage).
domain("B",crp).
domain("B",release_b).
root((and,(respondedexistence,(A,er_triage,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
