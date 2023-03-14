% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",release_a).
domain("A",release_d).
domain("B",return_er).
domain("B",admission_nc).
domain("C",er_registration).
domain("C",iv_antibiotics).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,er_triage,)),(notchainprecedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
