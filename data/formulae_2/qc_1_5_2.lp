% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",release_b).
domain("A",release_a).
domain("A",iv_liquid).
domain("A",release_c).
root((notresponse,(A,iv_liquid,))) :- iota("A",A).
