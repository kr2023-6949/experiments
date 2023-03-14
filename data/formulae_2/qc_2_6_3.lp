% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['admission_nc'], 'B': ['er_registration']})
domain("A",admission_nc).
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("A",lacticacid).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("B",er_registration).
domain("B",release_d).
domain("B",release_c).
domain("B",er_triage).
domain("B",return_er).
domain("B",iv_antibiotics).
root((and,(respondedexistence,(A,er_triage,)),(existence1,(B,)))) :- iota("A",A),iota("B",B).
