% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['er_triage'], 'B': ['release_a'], 'C': ['return_er']})
domain("A",er_triage).
domain("A",admission_ic).
domain("A",release_c).
domain("A",return_er).
domain("A",release_e).
domain("A",crp).
domain("B",release_a).
domain("B",admission_ic).
domain("B",release_b).
domain("B",er_registration).
domain("B",crp).
domain("B",admission_nc).
domain("C",return_er).
domain("C",release_e).
domain("C",admission_ic).
domain("C",lacticacid).
domain("C",leucocytes).
domain("C",er_triage).
root((and,(alternateprecedence,(A,release_a,)),(and,(notchainresponse,(B,admission_nc,)),(notresponse,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
