% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",er_registration).
domain("A",crp).
domain("A",iv_liquid).
domain("A",er_triage).
domain("A",admission_nc).
domain("A",return_er).
domain("B",return_er).
domain("B",er_triage).
domain("B",release_b).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("B",release_e).
domain("C",return_er).
domain("C",crp).
domain("C",release_e).
domain("C",er_triage).
domain("C",release_a).
domain("C",er_sepsis_triage).
root((and,(notchainresponse,(A,release_a,)),(and,(notchainresponse,(B,iv_liquid,)),(notprecedence,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
