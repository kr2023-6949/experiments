% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['er_registration']})
domain("A",iv_antibiotics).
domain("A",return_er).
domain("A",release_b).
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",er_registration).
domain("B",er_registration).
domain("B",admission_nc).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",release_e).
domain("B",iv_liquid).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(choice,(B,er_sepsis_triage,)))) :- iota("A",A),iota("B",B).
