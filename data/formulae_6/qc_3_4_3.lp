% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['er_triage'], 'B': ['release_a'], 'C': ['return_er']})
domain("A",er_triage).
domain("A",release_d).
domain("A",admission_nc).
domain("A",release_a).
domain("B",release_a).
domain("B",crp).
domain("B",er_sepsis_triage).
domain("B",er_triage).
domain("C",return_er).
domain("C",leucocytes).
domain("C",release_a).
domain("C",crp).
root((and,(alternateprecedence,(A,release_a,)),(and,(notchainresponse,(B,admission_nc,)),(notresponse,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
