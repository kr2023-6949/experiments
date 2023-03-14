% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['er_triage'], 'D': ['return_er']})
domain("A",iv_liquid).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("A",release_b).
domain("A",leucocytes).
domain("A",release_c).
domain("B",admission_nc).
domain("B",release_e).
domain("B",release_a).
domain("B",crp).
domain("B",er_registration).
domain("B",iv_antibiotics).
domain("C",er_triage).
domain("C",lacticacid).
domain("C",release_b).
domain("C",er_sepsis_triage).
domain("C",admission_nc).
domain("C",iv_liquid).
domain("D",return_er).
domain("D",admission_nc).
domain("D",release_e).
domain("D",er_registration).
domain("D",er_sepsis_triage).
domain("D",admission_ic).
root((and,(respondedexistence,(A,er_sepsis_triage,)),(and,(respondedexistence,(B,er_registration,)),(and,(respondedexistence,(C,er_registration,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
