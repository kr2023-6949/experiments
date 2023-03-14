% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['return_er'], 'B': ['admission_nc'], 'C': ['lacticacid']})
domain("A",return_er).
domain("A",release_a).
domain("B",admission_nc).
domain("B",release_a).
domain("C",lacticacid).
domain("C",release_e).
root((and,(notchainprecedence,(A,er_triage,)),(and,(alternateprecedence,(B,return_er,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
