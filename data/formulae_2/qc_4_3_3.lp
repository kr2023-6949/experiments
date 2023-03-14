% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid'], 'D': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",iv_liquid).
domain("A",er_sepsis_triage).
domain("B",er_triage).
domain("B",er_sepsis_triage).
domain("B",release_d).
domain("C",iv_liquid).
domain("C",release_a).
domain("C",release_c).
domain("D",iv_antibiotics).
domain("D",er_triage).
domain("D",release_c).
root((and,(respondedexistence,(A,er_triage,)),(and,(notchainprecedence,(B,admission_nc,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_sepsis_triage,)))))) :- iota("A",A),iota("B",B),iota("D",D),iota("C",C).
