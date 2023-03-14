% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",er_registration).
domain("A",release_d).
domain("B",return_er).
domain("B",leucocytes).
domain("C",return_er).
domain("C",er_triage).
root((and,(notchainresponse,(A,release_a,)),(and,(notchainresponse,(B,iv_liquid,)),(notprecedence,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
