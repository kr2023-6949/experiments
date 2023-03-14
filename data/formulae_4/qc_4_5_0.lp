% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",admission_ic).
domain("A",release_d).
domain("A",iv_antibiotics).
domain("A",release_a).
domain("B",er_triage).
domain("B",release_d).
domain("B",release_e).
domain("B",admission_ic).
domain("B",return_er).
domain("C",return_er).
domain("C",er_registration).
domain("C",release_c).
domain("C",release_a).
domain("C",admission_nc).
domain("D",er_registration).
domain("D",release_d).
domain("D",leucocytes).
domain("D",release_e).
domain("D",er_sepsis_triage).
root((and,(precedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(and,(notresponse,(C,er_sepsis_triage,)),(precedence,(D,release_a,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
