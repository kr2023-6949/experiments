% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['release_a']})
domain("A",release_a).
domain("A",release_e).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("C",lacticacid).
domain("C",release_e).
domain("C",iv_antibiotics).
domain("D",release_a).
domain("D",er_triage).
domain("D",release_b).
root((and,(notchainresponse,(A,er_registration,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_registration,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
