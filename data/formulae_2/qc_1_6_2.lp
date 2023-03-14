% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['return_er']})
domain("A",return_er).
domain("A",crp).
domain("A",release_d).
domain("A",iv_antibiotics).
domain("A",release_e).
domain("A",iv_liquid).
root((notresponse,(A,iv_liquid,))) :- iota("A",A).
