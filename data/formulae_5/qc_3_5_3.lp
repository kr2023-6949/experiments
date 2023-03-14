% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d592270a0>, {'A': ['iv_antibiotics'], 'B': ['release_a'], 'C': ['return_er']})
domain("A",iv_antibiotics).
domain("A",er_sepsis_triage).
domain("A",return_er).
domain("A",er_registration).
domain("A",release_d).
domain("B",release_a).
domain("B",return_er).
domain("B",er_triage).
domain("B",release_b).
domain("B",release_e).
domain("C",return_er).
domain("C",iv_liquid).
domain("C",lacticacid).
domain("C",admission_ic).
domain("C",er_sepsis_triage).
root((and,(notchainprecedence,(A,return_er,)),(and,(notresponse,(B,er_triage,)),(choice,(C,er_triage,))))) :- iota("C",C),iota("B",B),iota("A",A).
