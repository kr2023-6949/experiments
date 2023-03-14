% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",er_registration).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("C",er_triage).
domain("C",admission_nc).
root((and,(notresponse,(A,release_a,)),(and,(precedence,(B,release_a,)),(choice,(C,iv_liquid,))))) :- iota("A",A),iota("B",B),iota("C",C).
