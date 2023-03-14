% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",release_b).
domain("B",er_triage).
domain("B",release_b).
domain("B",er_sepsis_triage).
domain("B",release_a).
domain("C",return_er).
domain("C",release_e).
domain("C",release_d).
domain("C",iv_liquid).
domain("D",er_registration).
domain("D",lacticacid).
domain("D",iv_antibiotics).
domain("D",release_b).
root((and,(precedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(and,(notresponse,(C,er_sepsis_triage,)),(precedence,(D,release_a,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
