% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",release_e).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("A",return_er).
domain("A",release_b).
domain("B",return_er).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",release_c).
domain("B",er_triage).
domain("B",er_sepsis_triage).
root((and,(notresponse,(A,iv_liquid,)),(notchainprecedence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
