% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",er_registration).
domain("A",release_e).
domain("A",admission_nc).
domain("A",release_c).
domain("A",release_a).
domain("B",return_er).
domain("B",lacticacid).
domain("B",release_a).
domain("B",release_e).
domain("B",er_triage).
domain("C",return_er).
domain("C",er_triage).
domain("C",leucocytes).
domain("C",iv_liquid).
domain("C",release_b).
root((and,(notchainresponse,(A,release_a,)),(and,(notchainresponse,(B,iv_liquid,)),(notprecedence,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
