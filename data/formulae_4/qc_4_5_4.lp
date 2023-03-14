% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_sepsis_triage'], 'C': ['crp'], 'D': ['release_a']})
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",er_sepsis_triage).
domain("A",admission_nc).
domain("A",release_d).
domain("B",er_sepsis_triage).
domain("B",er_triage).
domain("B",release_b).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
domain("C",crp).
domain("C",release_a).
domain("C",lacticacid).
domain("C",admission_ic).
domain("C",release_d).
domain("D",release_a).
domain("D",iv_antibiotics).
domain("D",lacticacid).
domain("D",admission_ic).
domain("D",iv_liquid).
root((and,(notresponse,(A,er_registration,)),(and,(notchainprecedence,(B,release_a,)),(and,(choice,(C,er_registration,)),(notchainprecedence,(D,iv_antibiotics,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
