% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['er_registration'], 'C': ['return_er'], 'D': ['crp']})
domain("A",er_registration).
domain("A",release_c).
domain("A",iv_liquid).
domain("A",er_triage).
domain("A",release_d).
domain("B",er_registration).
domain("B",er_triage).
domain("B",release_c).
domain("B",release_e).
domain("B",release_d).
domain("C",return_er).
domain("C",admission_nc).
domain("C",er_triage).
domain("C",er_registration).
domain("C",release_b).
domain("D",crp).
domain("D",release_c).
domain("D",release_a).
domain("D",leucocytes).
domain("D",admission_ic).
root((and,(notchainprecedence,(A,release_a,)),(and,(notchainresponse,(B,release_a,)),(and,(notchainresponse,(C,er_triage,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
