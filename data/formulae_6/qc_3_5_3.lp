% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['er_triage'], 'B': ['release_a'], 'C': ['return_er']})
domain("A",er_triage).
domain("A",admission_ic).
domain("A",lacticacid).
domain("A",release_b).
domain("A",iv_liquid).
domain("B",release_a).
domain("B",return_er).
domain("B",crp).
domain("B",release_b).
domain("B",release_d).
domain("C",return_er).
domain("C",er_triage).
domain("C",iv_liquid).
domain("C",er_sepsis_triage).
domain("C",crp).
root((and,(alternateprecedence,(A,release_a,)),(and,(notchainresponse,(B,admission_nc,)),(notresponse,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
