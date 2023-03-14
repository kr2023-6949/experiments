% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73f40>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['release_a'], 'D': ['iv_antibiotics']})
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",release_d).
domain("A",admission_nc).
domain("A",release_e).
domain("B",return_er).
domain("B",iv_liquid).
domain("B",release_b).
domain("B",release_a).
domain("B",er_registration).
domain("B",lacticacid).
domain("C",release_a).
domain("C",lacticacid).
domain("C",leucocytes).
domain("C",iv_liquid).
domain("C",crp).
domain("C",er_triage).
domain("D",iv_antibiotics).
domain("D",admission_nc).
domain("D",er_registration).
domain("D",er_sepsis_triage).
domain("D",release_e).
domain("D",leucocytes).
root((and,(alternateprecedence,(A,return_er,)),(and,(notchainresponse,(B,lacticacid,)),(and,(notresponse,(C,iv_liquid,)),(notchainresponse,(D,return_er,)))))) :- iota("D",D),iota("A",A),iota("B",B),iota("C",C).
