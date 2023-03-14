% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['release_a']})
domain("A",release_a).
domain("A",admission_ic).
domain("A",iv_antibiotics).
domain("A",return_er).
domain("A",crp).
domain("A",release_c).
root((notresponse,(A,iv_antibiotics,))) :- iota("A",A).
