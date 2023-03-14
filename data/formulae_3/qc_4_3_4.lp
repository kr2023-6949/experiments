% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",release_d).
domain("B",return_er).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("C",lacticacid).
domain("C",release_e).
domain("C",release_c).
domain("D",return_er).
domain("D",iv_liquid).
domain("D",er_triage).
root((and,(notprecedence,(A,iv_liquid,)),(and,(notchainprecedence,(B,er_triage,)),(and,(choice,(C,er_registration,)),(notresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
