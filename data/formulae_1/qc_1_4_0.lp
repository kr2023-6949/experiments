% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",release_e).
domain("A",iv_liquid).
domain("A",release_c).
root((notchainprecedence,(A,iv_liquid,))) :- iota("A",A).
