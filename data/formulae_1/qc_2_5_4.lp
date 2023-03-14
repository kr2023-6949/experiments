% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['er_registration']})
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("A",release_a).
domain("A",release_c).
domain("A",crp).
domain("B",er_registration).
domain("B",release_e).
domain("B",er_sepsis_triage).
domain("B",leucocytes).
domain("B",iv_antibiotics).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(choice,(B,er_sepsis_triage,)))) :- iota("A",A),iota("B",B).
