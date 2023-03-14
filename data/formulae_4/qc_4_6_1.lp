% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['iv_liquid'], 'D': ['er_registration']})
domain("A",iv_liquid).
domain("A",admission_ic).
domain("A",release_a).
domain("A",return_er).
domain("A",crp).
domain("A",release_b).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",release_b).
domain("B",er_sepsis_triage).
domain("B",release_c).
domain("B",crp).
domain("C",iv_liquid).
domain("C",crp).
domain("C",release_b).
domain("C",admission_nc).
domain("C",release_a).
domain("C",release_d).
domain("D",er_registration).
domain("D",er_sepsis_triage).
domain("D",er_triage).
domain("D",release_d).
domain("D",release_e).
domain("D",iv_liquid).
root((and,(choice,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_registration,)),(choice,(D,leucocytes,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
