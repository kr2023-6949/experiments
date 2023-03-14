% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['admission_nc'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",er_registration).
domain("B",iv_liquid).
domain("B",er_registration).
domain("C",admission_nc).
domain("C",admission_ic).
domain("D",er_registration).
domain("D",leucocytes).
root((and,(choice,(A,lacticacid,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(choice,(D,admission_nc,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
