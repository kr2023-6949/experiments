% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['iv_antibiotics'], 'B': ['release_a'], 'C': ['return_er']})
domain("A",iv_antibiotics).
domain("A",release_d).
domain("A",er_registration).
domain("B",release_a).
domain("B",release_b).
domain("B",admission_nc).
domain("C",return_er).
domain("C",er_triage).
domain("C",release_a).
root((and,(notchainprecedence,(A,return_er,)),(and,(notresponse,(B,er_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
