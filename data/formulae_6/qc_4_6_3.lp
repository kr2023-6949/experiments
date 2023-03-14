% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['release_a']})
domain("A",release_a).
domain("A",er_triage).
domain("A",return_er).
domain("A",er_registration).
domain("A",leucocytes).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",iv_liquid).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",release_a).
domain("B",release_c).
domain("C",lacticacid).
domain("C",crp).
domain("C",release_b).
domain("C",er_registration).
domain("C",return_er).
domain("C",admission_nc).
domain("D",release_a).
domain("D",return_er).
domain("D",er_registration).
domain("D",er_sepsis_triage).
domain("D",release_c).
domain("D",iv_antibiotics).
root((and,(notchainresponse,(A,er_registration,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_registration,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
