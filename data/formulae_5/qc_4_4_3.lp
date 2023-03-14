% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['er_registration'], 'C': ['return_er'], 'D': ['crp']})
domain("A",er_registration).
domain("A",release_b).
domain("A",iv_liquid).
domain("A",er_sepsis_triage).
domain("B",er_registration).
domain("B",iv_liquid).
domain("B",iv_antibiotics).
domain("B",release_b).
domain("C",return_er).
domain("C",leucocytes).
domain("C",admission_ic).
domain("C",release_c).
domain("D",crp).
domain("D",release_b).
domain("D",release_d).
domain("D",iv_liquid).
root((and,(notchainprecedence,(A,release_a,)),(and,(notchainresponse,(B,release_a,)),(and,(notchainresponse,(C,er_triage,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
