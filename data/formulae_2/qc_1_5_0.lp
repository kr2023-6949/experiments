% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_registration']})
domain("A",er_registration).
domain("A",leucocytes).
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",release_d).
root((alternateprecedence,(A,release_a,))) :- iota("A",A).
