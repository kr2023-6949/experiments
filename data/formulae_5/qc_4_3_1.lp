% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['crp'], 'D': ['return_er']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",return_er).
domain("B",er_triage).
domain("B",release_d).
domain("B",iv_antibiotics).
domain("C",crp).
domain("C",er_registration).
domain("C",er_triage).
domain("D",return_er).
domain("D",admission_ic).
domain("D",er_triage).
root((and,(notprecedence,(A,er_triage,)),(and,(precedence,(B,return_er,)),(and,(choice,(C,er_sepsis_triage,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
