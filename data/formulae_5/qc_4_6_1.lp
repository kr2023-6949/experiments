% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['crp'], 'D': ['return_er']})
domain("A",release_a).
domain("A",admission_nc).
domain("A",er_triage).
domain("A",release_e).
domain("A",leucocytes).
domain("A",release_b).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",release_b).
domain("B",er_registration).
domain("B",release_c).
domain("B",release_a).
domain("C",crp).
domain("C",er_triage).
domain("C",release_d).
domain("C",admission_ic).
domain("C",lacticacid).
domain("C",er_registration).
domain("D",return_er).
domain("D",iv_antibiotics).
domain("D",release_b).
domain("D",admission_nc).
domain("D",er_registration).
domain("D",lacticacid).
root((and,(notprecedence,(A,er_triage,)),(and,(precedence,(B,return_er,)),(and,(choice,(C,er_sepsis_triage,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
