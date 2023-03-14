% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",release_e).
domain("A",release_b).
domain("A",return_er).
domain("A",admission_ic).
root((precedence,(A,admission_nc,))) :- iota("A",A).
