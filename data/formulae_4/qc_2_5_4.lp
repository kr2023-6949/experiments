% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",lacticacid).
domain("A",crp).
domain("A",release_b).
domain("A",release_d).
domain("B",return_er).
domain("B",release_a).
domain("B",er_sepsis_triage).
domain("B",release_b).
domain("B",iv_antibiotics).
root((and,(notresponse,(A,iv_liquid,)),(notchainprecedence,(B,er_sepsis_triage,)))) :- iota("B",B),iota("A",A).
