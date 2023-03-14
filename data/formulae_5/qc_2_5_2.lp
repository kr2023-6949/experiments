% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",release_d).
domain("A",admission_ic).
domain("A",crp).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",release_c).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
domain("B",er_sepsis_triage).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainprecedence,(B,admission_nc,)))) :- iota("B",B),iota("A",A).
