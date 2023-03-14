% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['return_er']})
domain("A",er_registration).
domain("A",leucocytes).
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("B",return_er).
domain("B",lacticacid).
domain("B",admission_ic).
domain("B",er_sepsis_triage).
domain("C",return_er).
domain("C",er_registration).
domain("C",er_sepsis_triage).
domain("C",admission_nc).
root((and,(notchainresponse,(A,release_a,)),(and,(notchainresponse,(B,iv_liquid,)),(notprecedence,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
