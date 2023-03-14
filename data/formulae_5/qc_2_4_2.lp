% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",admission_ic).
domain("A",er_registration).
domain("A",lacticacid).
domain("B",return_er).
domain("B",crp).
domain("B",er_registration).
domain("B",release_e).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainprecedence,(B,admission_nc,)))) :- iota("B",B),iota("A",A).
