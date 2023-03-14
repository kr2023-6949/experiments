% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",er_registration).
domain("A",release_c).
domain("A",leucocytes).
domain("B",return_er).
domain("B",er_triage).
domain("B",release_e).
domain("C",return_er).
domain("C",leucocytes).
domain("C",er_triage).
root((and,(notchainresponse,(A,release_a,)),(and,(notchainresponse,(B,iv_liquid,)),(notprecedence,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
