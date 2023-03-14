% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['iv_liquid'], 'D': ['er_registration']})
domain("A",iv_liquid).
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",release_e).
domain("C",iv_liquid).
domain("C",er_sepsis_triage).
domain("C",admission_nc).
domain("D",er_registration).
domain("D",er_sepsis_triage).
domain("D",release_b).
root((and,(choice,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_registration,)),(choice,(D,leucocytes,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
