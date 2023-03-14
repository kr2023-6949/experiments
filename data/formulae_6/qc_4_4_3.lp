% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fbf40>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['release_a']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",release_c).
domain("A",release_e).
domain("B",return_er).
domain("B",iv_liquid).
domain("B",crp).
domain("B",lacticacid).
domain("C",lacticacid).
domain("C",admission_ic).
domain("C",er_registration).
domain("C",iv_liquid).
domain("D",release_a).
domain("D",crp).
domain("D",release_e).
domain("D",lacticacid).
root((and,(notchainresponse,(A,er_registration,)),(and,(respondedexistence,(B,er_registration,)),(and,(choice,(C,er_triage,)),(notprecedence,(D,er_registration,)))))) :- iota("D",D),iota("B",B),iota("C",C),iota("A",A).
