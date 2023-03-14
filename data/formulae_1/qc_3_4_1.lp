% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",er_triage).
domain("A",admission_ic).
domain("A",release_e).
domain("B",er_triage).
domain("B",release_b).
domain("B",admission_nc).
domain("B",release_c).
domain("C",er_triage).
domain("C",iv_antibiotics).
domain("C",release_c).
domain("C",leucocytes).
root((and,(notresponse,(A,release_a,)),(and,(precedence,(B,release_a,)),(choice,(C,iv_liquid,))))) :- iota("A",A),iota("B",B),iota("C",C).
