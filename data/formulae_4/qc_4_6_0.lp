% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",crp).
domain("A",release_d).
domain("A",er_registration).
domain("A",release_b).
domain("A",return_er).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",release_a).
domain("B",iv_liquid).
domain("B",release_b).
domain("B",iv_antibiotics).
domain("C",return_er).
domain("C",release_d).
domain("C",lacticacid).
domain("C",er_triage).
domain("C",iv_antibiotics).
domain("C",release_b).
domain("D",er_registration).
domain("D",release_d).
domain("D",release_c).
domain("D",release_a).
domain("D",crp).
domain("D",return_er).
root((and,(precedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(and,(notresponse,(C,er_sepsis_triage,)),(precedence,(D,release_a,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
