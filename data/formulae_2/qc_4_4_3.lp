% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",er_sepsis_triage).
domain("A",release_a).
domain("A",crp).
domain("B",er_triage).
domain("B",release_d).
domain("B",leucocytes).
domain("B",iv_liquid).
domain("C",iv_liquid).
domain("C",er_triage).
domain("C",crp).
domain("C",leucocytes).
domain("D",iv_antibiotics).
domain("D",release_d).
domain("D",release_b).
domain("D",release_a).
root((and,(respondedexistence,(A,er_triage,)),(and,(notchainprecedence,(B,admission_nc,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_sepsis_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
