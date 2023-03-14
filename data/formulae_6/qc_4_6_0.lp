% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['lacticacid'], 'B': ['iv_liquid'], 'C': ['iv_antibiotics'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",release_c).
domain("A",er_registration).
domain("A",admission_ic).
domain("A",release_e).
domain("A",er_sepsis_triage).
domain("B",iv_liquid).
domain("B",admission_ic).
domain("B",release_c).
domain("B",er_registration).
domain("B",release_d).
domain("B",er_sepsis_triage).
domain("C",iv_antibiotics).
domain("C",admission_nc).
domain("C",iv_liquid).
domain("C",er_sepsis_triage).
domain("C",crp).
domain("C",release_a).
domain("D",return_er).
domain("D",release_e).
domain("D",admission_nc).
domain("D",er_registration).
domain("D",iv_antibiotics).
domain("D",er_sepsis_triage).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,er_registration,)),(and,(notchainprecedence,(C,er_sepsis_triage,)),(notchainprecedence,(D,iv_liquid,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
