% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",release_a).
domain("A",release_c).
domain("A",crp).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",release_b).
domain("B",release_d).
domain("B",release_c).
domain("B",crp).
domain("B",release_e).
domain("C",iv_liquid).
domain("C",return_er).
domain("C",er_sepsis_triage).
domain("C",er_triage).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("D",iv_antibiotics).
domain("D",release_d).
domain("D",lacticacid).
domain("D",admission_nc).
domain("D",iv_liquid).
domain("D",return_er).
root((and,(respondedexistence,(A,er_triage,)),(and,(notchainprecedence,(B,admission_nc,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_sepsis_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
