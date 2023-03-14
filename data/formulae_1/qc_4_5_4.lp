% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['release_a'], 'D': ['iv_antibiotics']})
domain("A",er_triage).
domain("A",iv_liquid).
domain("A",release_a).
domain("A",admission_ic).
domain("A",er_sepsis_triage).
domain("B",return_er).
domain("B",crp).
domain("B",er_registration).
domain("B",release_b).
domain("B",er_sepsis_triage).
domain("C",release_a).
domain("C",iv_liquid).
domain("C",release_c).
domain("C",crp).
domain("C",release_b).
domain("D",iv_antibiotics).
domain("D",release_d).
domain("D",return_er).
domain("D",iv_liquid).
domain("D",release_b).
root((and,(alternateprecedence,(A,return_er,)),(and,(notchainresponse,(B,lacticacid,)),(and,(notresponse,(C,iv_liquid,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
