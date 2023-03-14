% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",leucocytes).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",iv_antibiotics).
domain("B",er_triage).
domain("B",release_a).
domain("C",return_er).
domain("C",leucocytes).
domain("C",er_registration).
domain("C",iv_liquid).
domain("D",iv_antibiotics).
domain("D",er_triage).
domain("D",admission_ic).
domain("D",release_e).
root((and,(choice,(A,crp,)),(and,(notchainprecedence,(B,er_registration,)),(and,(notresponse,(C,iv_liquid,)),(notchainprecedence,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
