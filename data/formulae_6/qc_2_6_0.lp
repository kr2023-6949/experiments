% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['er_registration'], 'B': ['crp']})
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",leucocytes).
domain("A",return_er).
domain("A",release_c).
domain("A",crp).
domain("B",crp).
domain("B",release_c).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",admission_nc).
domain("B",iv_antibiotics).
root((and,(respondedexistence,(A,er_triage,)),(choice,(B,er_triage,)))) :- iota("B",B),iota("A",A).
