% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['iv_liquid']})
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("A",release_c).
domain("A",er_sepsis_triage).
domain("A",admission_nc).
domain("A",release_b).
domain("B",iv_liquid).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("B",return_er).
domain("B",leucocytes).
domain("B",release_c).
root((and,(respondedexistence,(A,er_sepsis_triage,)),(notchainresponse,(B,return_er,)))) :- iota("A",A),iota("B",B).
