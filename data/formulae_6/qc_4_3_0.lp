% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['lacticacid'], 'B': ['iv_liquid'], 'C': ['iv_antibiotics'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",release_b).
domain("A",admission_nc).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",admission_ic).
domain("C",iv_antibiotics).
domain("C",er_sepsis_triage).
domain("C",release_d).
domain("D",return_er).
domain("D",admission_ic).
domain("D",lacticacid).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,er_registration,)),(and,(notchainprecedence,(C,er_sepsis_triage,)),(notchainprecedence,(D,iv_liquid,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
