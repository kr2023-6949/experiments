% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",release_e).
domain("A",admission_ic).
domain("A",lacticacid).
domain("B",return_er).
domain("B",er_registration).
domain("B",release_d).
domain("B",er_triage).
root((and,(notresponse,(A,iv_liquid,)),(notchainprecedence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
