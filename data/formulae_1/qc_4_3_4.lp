% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['release_a'], 'D': ['iv_antibiotics']})
domain("A",er_triage).
domain("A",release_b).
domain("A",return_er).
domain("B",return_er).
domain("B",leucocytes).
domain("B",release_c).
domain("C",release_a).
domain("C",admission_ic).
domain("C",return_er).
domain("D",iv_antibiotics).
domain("D",er_registration).
domain("D",admission_nc).
root((and,(alternateprecedence,(A,return_er,)),(and,(notchainresponse,(B,lacticacid,)),(and,(notresponse,(C,iv_liquid,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
