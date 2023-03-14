% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",er_triage).
domain("A",return_er).
domain("A",admission_ic).
root((alternateprecedence,(A,release_a,))) :- iota("A",A).
