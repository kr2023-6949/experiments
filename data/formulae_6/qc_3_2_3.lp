% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['er_triage'], 'B': ['release_a'], 'C': ['return_er']})
domain("A",er_triage).
domain("A",lacticacid).
domain("B",release_a).
domain("B",release_e).
domain("C",return_er).
domain("C",admission_ic).
root((and,(alternateprecedence,(A,release_a,)),(and,(notchainresponse,(B,admission_nc,)),(notresponse,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
