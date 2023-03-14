% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['return_er'], 'B': ['er_triage'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",crp).
domain("A",lacticacid).
domain("A",release_d).
domain("A",release_a).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",crp).
domain("B",admission_ic).
domain("B",release_b).
domain("B",release_a).
domain("C",er_triage).
domain("C",er_registration).
domain("C",release_c).
domain("C",iv_antibiotics).
domain("C",admission_nc).
domain("C",release_d).
root((and,(notresponse,(A,release_a,)),(and,(precedence,(B,release_a,)),(choice,(C,iv_liquid,))))) :- iota("A",A),iota("B",B),iota("C",C).
