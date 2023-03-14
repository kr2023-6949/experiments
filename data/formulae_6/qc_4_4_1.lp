% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['er_triage'], 'D': ['return_er']})
domain("A",iv_liquid).
domain("A",release_d).
domain("A",admission_nc).
domain("A",leucocytes).
domain("B",admission_nc).
domain("B",return_er).
domain("B",iv_liquid).
domain("B",lacticacid).
domain("C",er_triage).
domain("C",er_sepsis_triage).
domain("C",admission_nc).
domain("C",release_d).
domain("D",return_er).
domain("D",release_b).
domain("D",iv_antibiotics).
domain("D",release_d).
root((and,(respondedexistence,(A,er_sepsis_triage,)),(and,(respondedexistence,(B,er_registration,)),(and,(respondedexistence,(C,er_registration,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
