% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",release_b).
domain("A",admission_ic).
domain("B",return_er).
domain("B",er_sepsis_triage).
domain("B",release_a).
domain("C",return_er).
domain("C",lacticacid).
domain("C",release_e).
domain("D",iv_antibiotics).
domain("D",release_d).
domain("D",release_c).
root((and,(choice,(A,crp,)),(and,(notchainprecedence,(B,er_registration,)),(and,(notresponse,(C,iv_liquid,)),(notchainprecedence,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
