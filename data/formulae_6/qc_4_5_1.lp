% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['er_triage'], 'D': ['return_er']})
domain("A",iv_liquid).
domain("A",release_d).
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",release_a).
domain("B",admission_nc).
domain("B",crp).
domain("B",er_registration).
domain("B",iv_liquid).
domain("B",er_sepsis_triage).
domain("C",er_triage).
domain("C",return_er).
domain("C",leucocytes).
domain("C",admission_nc).
domain("C",crp).
domain("D",return_er).
domain("D",release_e).
domain("D",release_b).
domain("D",release_d).
domain("D",admission_ic).
root((and,(respondedexistence,(A,er_sepsis_triage,)),(and,(respondedexistence,(B,er_registration,)),(and,(respondedexistence,(C,er_registration,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
