% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",admission_nc).
domain("A",release_b).
domain("A",release_d).
domain("A",er_registration).
domain("B",return_er).
domain("B",leucocytes).
domain("B",iv_antibiotics).
domain("B",release_e).
domain("B",release_a).
domain("C",lacticacid).
domain("C",leucocytes).
domain("C",admission_ic).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("D",return_er).
domain("D",release_d).
domain("D",release_a).
domain("D",crp).
domain("D",iv_liquid).
root((and,(notprecedence,(A,iv_liquid,)),(and,(notchainprecedence,(B,er_triage,)),(and,(choice,(C,er_registration,)),(notresponse,(D,admission_nc,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
