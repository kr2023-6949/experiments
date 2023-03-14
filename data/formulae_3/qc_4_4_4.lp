% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",crp).
domain("A",release_d).
domain("A",release_b).
domain("B",return_er).
domain("B",release_b).
domain("B",admission_nc).
domain("B",iv_liquid).
domain("C",lacticacid).
domain("C",er_triage).
domain("C",admission_nc).
domain("C",er_sepsis_triage).
domain("D",return_er).
domain("D",release_a).
domain("D",lacticacid).
domain("D",crp).
root((and,(notprecedence,(A,iv_liquid,)),(and,(notchainprecedence,(B,er_triage,)),(and,(choice,(C,er_registration,)),(notresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
