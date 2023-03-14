% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['er_registration'], 'C': ['return_er'], 'D': ['crp']})
domain("A",er_registration).
domain("A",admission_nc).
domain("B",er_registration).
domain("B",admission_ic).
domain("C",return_er).
domain("C",release_e).
domain("D",crp).
domain("D",er_registration).
root((and,(notchainprecedence,(A,release_a,)),(and,(notchainresponse,(B,release_a,)),(and,(notchainresponse,(C,er_triage,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
