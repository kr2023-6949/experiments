% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['er_registration'], 'C': ['return_er'], 'D': ['crp']})
domain("A",er_registration).
domain("A",er_sepsis_triage).
domain("A",admission_nc).
domain("A",release_c).
domain("A",release_e).
domain("A",release_d).
domain("B",er_registration).
domain("B",return_er).
domain("B",release_b).
domain("B",er_triage).
domain("B",release_e).
domain("B",leucocytes).
domain("C",return_er).
domain("C",er_registration).
domain("C",crp).
domain("C",release_c).
domain("C",er_triage).
domain("C",leucocytes).
domain("D",crp).
domain("D",release_c).
domain("D",er_triage).
domain("D",admission_nc).
domain("D",release_a).
domain("D",release_d).
root((and,(notchainprecedence,(A,release_a,)),(and,(notchainresponse,(B,release_a,)),(and,(notchainresponse,(C,er_triage,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
