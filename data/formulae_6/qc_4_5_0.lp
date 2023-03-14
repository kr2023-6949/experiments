% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['lacticacid'], 'B': ['iv_liquid'], 'C': ['iv_antibiotics'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",admission_ic).
domain("A",release_d).
domain("A",release_a).
domain("A",return_er).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",er_sepsis_triage).
domain("B",crp).
domain("B",lacticacid).
domain("C",iv_antibiotics).
domain("C",er_triage).
domain("C",release_a).
domain("C",release_c).
domain("C",release_e).
domain("D",return_er).
domain("D",release_b).
domain("D",er_registration).
domain("D",admission_nc).
domain("D",iv_antibiotics).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,er_registration,)),(and,(notchainprecedence,(C,er_sepsis_triage,)),(notchainprecedence,(D,iv_liquid,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
