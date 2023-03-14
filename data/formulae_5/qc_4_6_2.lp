% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er'], 'D': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",return_er).
domain("A",release_c).
domain("A",er_sepsis_triage).
domain("A",admission_ic).
domain("A",release_d).
domain("B",return_er).
domain("B",release_c).
domain("B",admission_ic).
domain("B",er_triage).
domain("B",er_registration).
domain("B",crp).
domain("C",return_er).
domain("C",admission_nc).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",er_registration).
domain("C",release_c).
domain("D",iv_antibiotics).
domain("D",return_er).
domain("D",release_a).
domain("D",er_registration).
domain("D",release_c).
domain("D",crp).
root((and,(choice,(A,crp,)),(and,(notchainprecedence,(B,er_registration,)),(and,(notresponse,(C,iv_liquid,)),(notchainprecedence,(D,er_sepsis_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
