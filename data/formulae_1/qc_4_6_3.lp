% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['admission_nc'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",release_e).
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("B",iv_liquid).
domain("B",admission_ic).
domain("B",return_er).
domain("B",release_c).
domain("B",er_sepsis_triage).
domain("B",release_d).
domain("C",admission_nc).
domain("C",er_triage).
domain("C",er_registration).
domain("C",release_b).
domain("C",crp).
domain("C",release_c).
domain("D",er_registration).
domain("D",release_c).
domain("D",return_er).
domain("D",release_a).
domain("D",er_sepsis_triage).
domain("D",iv_liquid).
root((and,(choice,(A,lacticacid,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(choice,(D,admission_nc,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
