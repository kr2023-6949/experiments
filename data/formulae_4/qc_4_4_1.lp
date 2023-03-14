% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['iv_liquid'], 'D': ['er_registration']})
domain("A",iv_liquid).
domain("A",release_e).
domain("A",crp).
domain("A",return_er).
domain("B",admission_nc).
domain("B",lacticacid).
domain("B",release_d).
domain("B",release_a).
domain("C",iv_liquid).
domain("C",release_d).
domain("C",iv_antibiotics).
domain("C",release_e).
domain("D",er_registration).
domain("D",leucocytes).
domain("D",crp).
domain("D",release_a).
root((and,(choice,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(respondedexistence,(C,er_registration,)),(choice,(D,leucocytes,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
