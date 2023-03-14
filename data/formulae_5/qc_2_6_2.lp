% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",release_b).
domain("A",release_d).
domain("A",release_e).
domain("A",crp).
domain("A",admission_ic).
domain("B",return_er).
domain("B",release_c).
domain("B",lacticacid).
domain("B",release_a).
domain("B",release_d).
domain("B",er_registration).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainprecedence,(B,admission_nc,)))) :- iota("B",B),iota("A",A).
