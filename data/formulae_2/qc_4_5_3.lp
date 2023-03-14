% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",release_e).
domain("A",er_sepsis_triage).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",iv_liquid).
domain("B",crp).
domain("B",leucocytes).
domain("B",release_a).
domain("C",iv_liquid).
domain("C",release_b).
domain("C",er_registration).
domain("C",leucocytes).
domain("C",admission_nc).
domain("D",iv_antibiotics).
domain("D",release_a).
domain("D",release_b).
domain("D",release_c).
domain("D",leucocytes).
root((and,(respondedexistence,(A,er_triage,)),(and,(notchainprecedence,(B,admission_nc,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_sepsis_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
