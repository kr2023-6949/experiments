% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['er_registration'], 'D': ['iv_liquid']})
domain("A",release_a).
domain("A",release_c).
domain("A",iv_antibiotics).
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("A",iv_liquid).
domain("B",er_triage).
domain("B",crp).
domain("B",return_er).
domain("B",admission_nc).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
domain("C",er_registration).
domain("C",lacticacid).
domain("C",crp).
domain("C",iv_antibiotics).
domain("C",admission_ic).
domain("C",return_er).
domain("D",iv_liquid).
domain("D",release_a).
domain("D",er_registration).
domain("D",leucocytes).
domain("D",er_triage).
domain("D",release_e).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,lacticacid,)),(and,(choice,(C,er_sepsis_triage,)),(respondedexistence,(D,crp,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
