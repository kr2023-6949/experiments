% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['er_sepsis_triage'], 'B': ['er_triage'], 'C': ['return_er'], 'D': ['er_registration']})
domain("A",er_sepsis_triage).
domain("A",er_registration).
domain("B",er_triage).
domain("B",release_e).
domain("C",return_er).
domain("C",lacticacid).
domain("D",er_registration).
domain("D",lacticacid).
root((and,(precedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(and,(notresponse,(C,er_sepsis_triage,)),(precedence,(D,release_a,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
