% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['admission_nc'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",release_e).
domain("A",leucocytes).
domain("B",iv_liquid).
domain("B",return_er).
domain("B",er_sepsis_triage).
domain("C",admission_nc).
domain("C",leucocytes).
domain("C",release_e).
domain("D",er_registration).
domain("D",return_er).
domain("D",iv_antibiotics).
root((and,(choice,(A,lacticacid,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(choice,(D,admission_nc,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
