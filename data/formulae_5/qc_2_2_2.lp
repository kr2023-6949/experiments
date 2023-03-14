% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['return_er']})
domain("A",release_a).
domain("A",lacticacid).
domain("B",return_er).
domain("B",lacticacid).
root((and,(notchainprecedence,(A,admission_nc,)),(notchainprecedence,(B,admission_nc,)))) :- iota("B",B),iota("A",A).
