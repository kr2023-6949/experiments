% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",release_a).
domain("A",admission_nc).
domain("A",release_c).
domain("A",release_b).
domain("B",return_er).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
domain("B",er_triage).
domain("C",er_registration).
domain("C",lacticacid).
domain("C",release_a).
domain("C",release_d).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,er_triage,)),(notchainprecedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
