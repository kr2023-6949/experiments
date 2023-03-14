% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['lacticacid'], 'B': ['lacticacid'], 'C': ['return_er'], 'D': ['crp']})
domain("A",lacticacid).
domain("A",leucocytes).
domain("A",release_a).
domain("A",er_triage).
domain("A",admission_nc).
domain("A",iv_antibiotics).
domain("B",lacticacid).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",release_c).
domain("B",admission_nc).
domain("B",release_d).
domain("C",return_er).
domain("C",release_e).
domain("C",admission_nc).
domain("C",er_registration).
domain("C",er_sepsis_triage).
domain("C",er_triage).
domain("D",crp).
domain("D",admission_ic).
domain("D",release_b).
domain("D",release_e).
domain("D",lacticacid).
domain("D",return_er).
root((and,(respondedexistence,(A,er_registration,)),(and,(respondedexistence,(B,er_triage,)),(and,(notresponse,(C,er_triage,)),(choice,(D,er_triage,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
