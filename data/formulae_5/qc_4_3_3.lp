% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['er_registration'], 'C': ['return_er'], 'D': ['crp']})
domain("A",er_registration).
domain("A",release_b).
domain("A",er_triage).
domain("B",er_registration).
domain("B",lacticacid).
domain("B",release_d).
domain("C",return_er).
domain("C",admission_nc).
domain("C",release_d).
domain("D",crp).
domain("D",admission_ic).
domain("D",release_b).
root((and,(notchainprecedence,(A,release_a,)),(and,(notchainresponse,(B,release_a,)),(and,(notchainresponse,(C,er_triage,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
