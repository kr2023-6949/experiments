% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['release_a']})
domain("A",er_sepsis_triage).
domain("A",leucocytes).
domain("A",release_a).
domain("A",admission_nc).
domain("A",release_d).
domain("A",iv_antibiotics).
domain("B",release_a).
domain("B",er_registration).
domain("B",leucocytes).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
root((and,(choice,(A,crp,)),(notprecedence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
