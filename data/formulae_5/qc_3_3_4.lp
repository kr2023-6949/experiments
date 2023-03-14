% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['release_a'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",release_a).
domain("A",release_c).
domain("A",iv_antibiotics).
domain("B",return_er).
domain("B",crp).
domain("B",lacticacid).
domain("C",er_registration).
domain("C",lacticacid).
domain("C",iv_liquid).
root((and,(choice,(A,er_triage,)),(and,(notchainprecedence,(B,er_triage,)),(notchainprecedence,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
