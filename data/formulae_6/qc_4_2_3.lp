% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['release_a']})
domain("A",release_a).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",release_e).
domain("C",lacticacid).
domain("C",return_er).
domain("D",release_a).
domain("D",admission_ic).
root((and,(notchainresponse,(A,er_registration,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_registration,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
