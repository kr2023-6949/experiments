% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_registration'], 'B': ['crp']})
domain("A",er_registration).
domain("A",release_c).
domain("A",release_a).
domain("B",crp).
domain("B",admission_ic).
domain("B",release_a).
root((and,(respondedexistence,(A,er_triage,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
