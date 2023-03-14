% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",crp).
domain("A",iv_antibiotics).
domain("B",return_er).
domain("B",lacticacid).
domain("B",release_d).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainprecedence,(B,admission_nc,)))) :- iota("B",B),iota("A",A).
