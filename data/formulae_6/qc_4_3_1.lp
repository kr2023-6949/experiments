% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['er_triage'], 'D': ['return_er']})
domain("A",iv_liquid).
domain("A",release_c).
domain("A",er_registration).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",er_triage).
domain("C",er_triage).
domain("C",admission_nc).
domain("C",er_sepsis_triage).
domain("D",return_er).
domain("D",iv_antibiotics).
domain("D",admission_ic).
root((and,(respondedexistence,(A,er_sepsis_triage,)),(and,(respondedexistence,(B,er_registration,)),(and,(respondedexistence,(C,er_registration,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
