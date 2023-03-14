% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er'], 'C': ['lacticacid'], 'D': ['return_er']})
domain("A",return_er).
domain("A",er_registration).
domain("B",return_er).
domain("B",admission_nc).
domain("C",lacticacid).
domain("C",leucocytes).
domain("D",return_er).
domain("D",iv_liquid).
root((and,(notchainresponse,(A,er_registration,)),(and,(choice,(B,er_triage,)),(and,(notchainresponse,(C,return_er,)),(notprecedence,(D,iv_antibiotics,)))))) :- iota("D",D),iota("B",B),iota("A",A),iota("C",C).
