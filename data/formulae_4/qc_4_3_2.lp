% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['er_registration'], 'D': ['iv_liquid']})
domain("A",release_a).
domain("A",release_b).
domain("A",release_e).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",er_registration).
domain("C",er_registration).
domain("C",iv_antibiotics).
domain("C",lacticacid).
domain("D",iv_liquid).
domain("D",er_sepsis_triage).
domain("D",leucocytes).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,lacticacid,)),(and,(choice,(C,er_sepsis_triage,)),(respondedexistence,(D,crp,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
