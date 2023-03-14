% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['er_sepsis_triage']})
domain("A",iv_antibiotics).
domain("A",crp).
domain("A",lacticacid).
domain("A",er_triage).
domain("A",return_er).
domain("B",er_sepsis_triage).
domain("B",admission_ic).
domain("B",release_a).
domain("B",release_d).
domain("B",return_er).
root((and,(notchainresponse,(A,er_sepsis_triage,)),(notchainprecedence,(B,return_er,)))) :- iota("A",A),iota("B",B).
