% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_sepsis_triage'], 'C': ['crp'], 'D': ['release_a']})
domain("A",release_a).
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",release_b).
domain("A",return_er).
domain("A",lacticacid).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",er_registration).
domain("B",lacticacid).
domain("B",release_c).
domain("B",release_b).
domain("C",crp).
domain("C",er_sepsis_triage).
domain("C",admission_ic).
domain("C",iv_antibiotics).
domain("C",release_c).
domain("C",er_triage).
domain("D",release_a).
domain("D",crp).
domain("D",lacticacid).
domain("D",er_triage).
domain("D",er_registration).
domain("D",return_er).
root((and,(notresponse,(A,er_registration,)),(and,(notchainprecedence,(B,release_a,)),(and,(choice,(C,er_registration,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
