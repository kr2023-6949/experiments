% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['release_a'], 'D': ['iv_antibiotics']})
domain("A",er_triage).
domain("A",release_e).
domain("A",crp).
domain("A",return_er).
domain("B",return_er).
domain("B",lacticacid).
domain("B",release_d).
domain("B",er_registration).
domain("C",release_a).
domain("C",er_sepsis_triage).
domain("C",er_triage).
domain("C",lacticacid).
domain("D",iv_antibiotics).
domain("D",release_e).
domain("D",er_sepsis_triage).
domain("D",return_er).
root((and,(alternateprecedence,(A,return_er,)),(and,(notchainresponse,(B,lacticacid,)),(and,(notresponse,(C,iv_liquid,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
