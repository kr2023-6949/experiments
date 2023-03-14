% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['iv_liquid'], 'D': ['er_registration']})
domain("A",iv_liquid).
domain("A",admission_nc).
domain("A",er_triage).
domain("A",release_e).
domain("A",release_a).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",release_c).
domain("B",leucocytes).
domain("B",release_b).
domain("C",iv_liquid).
domain("C",release_a).
domain("C",admission_nc).
domain("C",iv_antibiotics).
domain("C",lacticacid).
domain("D",er_registration).
domain("D",release_a).
domain("D",return_er).
domain("D",lacticacid).
domain("D",er_sepsis_triage).
root((and,(choice,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_registration,)),(choice,(D,leucocytes,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
