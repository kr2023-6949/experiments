% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['admission_nc'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",admission_ic).
domain("A",release_e).
domain("A",er_triage).
domain("A",return_er).
domain("B",iv_liquid).
domain("B",crp).
domain("B",er_registration).
domain("B",admission_nc).
domain("B",return_er).
domain("C",admission_nc).
domain("C",iv_antibiotics).
domain("C",release_e).
domain("C",admission_ic).
domain("C",release_b).
domain("D",er_registration).
domain("D",release_c).
domain("D",crp).
domain("D",iv_liquid).
domain("D",admission_nc).
root((and,(choice,(A,lacticacid,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(choice,(D,admission_nc,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
