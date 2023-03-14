% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",release_c).
domain("B",return_er).
domain("B",iv_liquid).
domain("C",lacticacid).
domain("C",release_c).
domain("D",return_er).
domain("D",admission_ic).
root((and,(notprecedence,(A,iv_liquid,)),(and,(notchainprecedence,(B,er_triage,)),(and,(choice,(C,er_registration,)),(notresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
