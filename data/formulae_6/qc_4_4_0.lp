% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['lacticacid'], 'B': ['iv_liquid'], 'C': ['iv_antibiotics'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",release_e).
domain("B",iv_liquid).
domain("B",lacticacid).
domain("B",er_registration).
domain("B",release_e).
domain("C",iv_antibiotics).
domain("C",release_b).
domain("C",admission_ic).
domain("C",return_er).
domain("D",return_er).
domain("D",release_b).
domain("D",er_triage).
domain("D",er_registration).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,er_registration,)),(and,(notchainprecedence,(C,er_sepsis_triage,)),(notchainprecedence,(D,iv_liquid,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
