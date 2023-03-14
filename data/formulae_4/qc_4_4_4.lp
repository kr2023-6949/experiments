% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_sepsis_triage'], 'C': ['crp'], 'D': ['release_a']})
domain("A",release_a).
domain("A",admission_nc).
domain("A",er_triage).
domain("A",release_b).
domain("B",er_sepsis_triage).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("C",crp).
domain("C",leucocytes).
domain("C",release_e).
domain("C",er_registration).
domain("D",release_a).
domain("D",release_c).
domain("D",crp).
domain("D",er_registration).
root((and,(notresponse,(A,er_registration,)),(and,(notchainprecedence,(B,release_a,)),(and,(choice,(C,er_registration,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
