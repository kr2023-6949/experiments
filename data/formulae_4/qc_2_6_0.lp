% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['admission_nc'], 'B': ['release_a']})
domain("A",admission_nc).
domain("A",crp).
domain("A",er_triage).
domain("A",iv_antibiotics).
domain("A",iv_liquid).
domain("A",er_registration).
domain("B",release_a).
domain("B",release_d).
domain("B",er_triage).
domain("B",release_b).
domain("B",release_e).
domain("B",er_sepsis_triage).
root((and,(notresponse,(A,er_registration,)),(notresponse,(B,er_registration,)))) :- iota("B",B),iota("A",A).
