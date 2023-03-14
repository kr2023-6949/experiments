% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['crp'], 'D': ['return_er']})
domain("A",release_a).
domain("A",er_triage).
domain("A",iv_liquid).
domain("A",lacticacid).
domain("B",er_triage).
domain("B",release_b).
domain("B",crp).
domain("B",er_registration).
domain("C",crp).
domain("C",release_b).
domain("C",return_er).
domain("C",er_sepsis_triage).
domain("D",return_er).
domain("D",release_e).
domain("D",leucocytes).
domain("D",iv_antibiotics).
root((and,(notprecedence,(A,er_triage,)),(and,(precedence,(B,return_er,)),(and,(choice,(C,er_sepsis_triage,)),(notchainprecedence,(D,er_triage,)))))) :- iota("D",D),iota("C",C),iota("B",B),iota("A",A).
