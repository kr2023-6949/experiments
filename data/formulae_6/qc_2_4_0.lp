% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_registration'], 'B': ['crp']})
domain("A",er_registration).
domain("A",crp).
domain("A",release_d).
domain("A",admission_nc).
domain("B",crp).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("B",lacticacid).
root((and,(respondedexistence,(A,er_triage,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
