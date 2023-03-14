% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['er_sepsis_triage']})
domain("A",iv_antibiotics).
domain("A",return_er).
domain("A",crp).
domain("A",er_sepsis_triage).
domain("A",leucocytes).
domain("A",er_registration).
domain("B",er_sepsis_triage).
domain("B",er_triage).
domain("B",release_d).
domain("B",admission_nc).
domain("B",release_c).
domain("B",leucocytes).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(notchainprecedence,(B,return_er,)))) :- iota("A",A),iota("B",B).
