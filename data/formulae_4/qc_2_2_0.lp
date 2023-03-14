% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['admission_nc'], 'B': ['release_a']})
domain("A",admission_nc).
domain("A",er_sepsis_triage).
domain("B",release_a).
domain("B",iv_liquid).
root((and,(notresponse,(A,er_registration,)),(notresponse,(B,er_registration,)))) :- iota("B",B),iota("A",A).
