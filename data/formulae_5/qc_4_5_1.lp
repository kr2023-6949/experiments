% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['crp'], 'D': ['return_er']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",admission_ic).
domain("A",release_b).
domain("A",crp).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",release_d).
domain("C",crp).
domain("C",admission_ic).
domain("C",release_c).
domain("C",admission_nc).
domain("C",er_triage).
domain("D",return_er).
domain("D",iv_liquid).
domain("D",iv_antibiotics).
domain("D",er_triage).
domain("D",er_sepsis_triage).
root((and,(notprecedence,(A,er_triage,)),(and,(precedence,(B,return_er,)),(and,(choice,(C,er_sepsis_triage,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
