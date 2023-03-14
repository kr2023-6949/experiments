% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['admission_nc'], 'B': ['er_registration']})
domain("A",admission_nc).
domain("A",er_sepsis_triage).
domain("A",admission_ic).
domain("A",er_registration).
domain("A",release_a).
domain("B",er_registration).
domain("B",release_c).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("B",admission_ic).
root((and,(respondedexistence,(A,er_triage,)),(existence1,(B,)))) :- iota("A",A),iota("B",B).
