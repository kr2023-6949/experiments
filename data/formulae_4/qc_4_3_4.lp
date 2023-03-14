% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_sepsis_triage'], 'C': ['crp'], 'D': ['release_a']})
domain("A",release_a).
domain("A",return_er).
domain("A",admission_ic).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",return_er).
domain("C",crp).
domain("C",release_c).
domain("C",iv_antibiotics).
domain("D",release_a).
domain("D",er_sepsis_triage).
domain("D",release_b).
root((and,(notresponse,(A,er_registration,)),(and,(notchainprecedence,(B,release_a,)),(and,(choice,(C,er_registration,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
