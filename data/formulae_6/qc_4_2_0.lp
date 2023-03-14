% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['lacticacid'], 'B': ['iv_liquid'], 'C': ['iv_antibiotics'], 'D': ['return_er']})
domain("A",lacticacid).
domain("A",release_d).
domain("B",iv_liquid).
domain("B",crp).
domain("C",iv_antibiotics).
domain("C",release_b).
domain("D",return_er).
domain("D",er_triage).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,er_registration,)),(and,(notchainprecedence,(C,er_sepsis_triage,)),(notchainprecedence,(D,iv_liquid,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
