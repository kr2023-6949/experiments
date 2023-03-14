% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",release_b).
domain("A",leucocytes).
domain("B",return_er).
domain("B",leucocytes).
domain("B",release_c).
domain("C",lacticacid).
domain("C",release_d).
domain("C",admission_ic).
domain("D",return_er).
domain("D",release_a).
domain("D",crp).
root((and,(notchainresponse,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
