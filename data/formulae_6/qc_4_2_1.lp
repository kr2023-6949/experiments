% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['iv_liquid'], 'B': ['admission_nc'], 'C': ['er_triage'], 'D': ['return_er']})
domain("A",iv_liquid).
domain("A",lacticacid).
domain("B",admission_nc).
domain("B",admission_ic).
domain("C",er_triage).
domain("C",admission_ic).
domain("D",return_er).
domain("D",leucocytes).
root((and,(respondedexistence,(A,er_sepsis_triage,)),(and,(respondedexistence,(B,er_registration,)),(and,(respondedexistence,(C,er_registration,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
