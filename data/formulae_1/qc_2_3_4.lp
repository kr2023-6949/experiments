% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['er_registration']})
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",leucocytes).
domain("B",er_registration).
domain("B",leucocytes).
domain("B",er_sepsis_triage).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(choice,(B,er_sepsis_triage,)))) :- iota("A",A),iota("B",B).
