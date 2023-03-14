% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['er_registration'], 'D': ['iv_liquid']})
domain("A",release_a).
domain("A",return_er).
domain("A",lacticacid).
domain("A",iv_antibiotics).
domain("A",er_sepsis_triage).
domain("B",er_triage).
domain("B",er_registration).
domain("B",release_a).
domain("B",iv_antibiotics).
domain("B",return_er).
domain("C",er_registration).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
domain("C",admission_ic).
domain("C",release_e).
domain("D",iv_liquid).
domain("D",release_a).
domain("D",return_er).
domain("D",release_b).
domain("D",leucocytes).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,lacticacid,)),(and,(choice,(C,er_sepsis_triage,)),(respondedexistence,(D,crp,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
