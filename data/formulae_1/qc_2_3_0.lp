% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['er_sepsis_triage']})
domain("A",iv_antibiotics).
domain("A",release_d).
domain("A",er_sepsis_triage).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(notchainprecedence,(B,return_er,)))) :- iota("A",A),iota("B",B).
