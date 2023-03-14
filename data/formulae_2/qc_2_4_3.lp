% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['admission_nc'], 'B': ['er_registration']})
domain("A",admission_nc).
domain("A",release_a).
domain("A",release_b).
domain("A",return_er).
domain("B",er_registration).
domain("B",iv_antibiotics).
domain("B",er_sepsis_triage).
domain("B",release_d).
root((and,(respondedexistence,(A,er_triage,)),(existence1,(B,)))) :- iota("A",A),iota("B",B).
