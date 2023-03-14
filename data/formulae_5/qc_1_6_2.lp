% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['lacticacid']})
domain("A",lacticacid).
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",return_er).
domain("A",release_a).
domain("A",release_d).
root((notchainresponse,(A,return_er,))) :- iota("A",A).
