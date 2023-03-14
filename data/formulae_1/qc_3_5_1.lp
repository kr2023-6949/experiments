% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",release_d).
domain("A",release_c).
domain("A",er_registration).
domain("A",leucocytes).
domain("B",er_triage).
domain("B",release_d).
domain("B",return_er).
domain("B",release_b).
domain("B",iv_antibiotics).
domain("C",er_triage).
domain("C",release_e).
domain("C",release_c).
domain("C",release_a).
domain("C",er_sepsis_triage).
root((and,(notresponse,(A,release_a,)),(and,(precedence,(B,release_a,)),(choice,(C,iv_liquid,))))) :- iota("A",A),iota("B",B),iota("C",C).
