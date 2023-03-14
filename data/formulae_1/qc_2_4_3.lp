% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['iv_antibiotics'], 'B': ['iv_liquid']})
domain("A",iv_antibiotics).
domain("A",release_c).
domain("A",release_e).
domain("A",admission_ic).
domain("B",iv_liquid).
domain("B",return_er).
domain("B",release_e).
domain("B",lacticacid).
root((and,(respondedexistence,(A,er_sepsis_triage,)),(notchainresponse,(B,return_er,)))) :- iota("A",A),iota("B",B).
