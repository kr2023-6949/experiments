% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['iv_antibiotics'], 'B': ['release_a'], 'C': ['return_er']})
domain("A",iv_antibiotics).
domain("A",iv_liquid).
domain("A",er_registration).
domain("A",admission_nc).
domain("A",release_a).
domain("A",release_e).
domain("B",release_a).
domain("B",crp).
domain("B",release_b).
domain("B",iv_liquid).
domain("B",er_sepsis_triage).
domain("B",release_d).
domain("C",return_er).
domain("C",release_c).
domain("C",er_triage).
domain("C",release_e).
domain("C",iv_antibiotics).
domain("C",admission_nc).
root((and,(notchainprecedence,(A,return_er,)),(and,(notresponse,(B,er_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
