% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",release_a).
domain("A",iv_liquid).
domain("B",er_triage).
domain("B",release_b).
domain("B",admission_ic).
domain("C",return_er).
domain("C",release_c).
domain("C",er_registration).
domain("D",er_registration).
domain("D",release_a).
domain("D",leucocytes).
root((and,(precedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(and,(notresponse,(C,er_sepsis_triage,)),(precedence,(D,release_a,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
