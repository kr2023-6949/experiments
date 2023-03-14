% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a']})
domain("A",release_a).
domain("A",release_e).
domain("A",iv_liquid).
domain("A",release_c).
root((notprecedence,(A,iv_liquid,))) :- iota("A",A).
