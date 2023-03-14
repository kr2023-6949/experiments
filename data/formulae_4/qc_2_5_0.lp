% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7f40>, {'A': ['admission_nc'], 'B': ['release_a']})
domain("A",admission_nc).
domain("A",release_d).
domain("A",crp).
domain("A",iv_antibiotics).
domain("A",release_c).
domain("B",release_a).
domain("B",admission_nc).
domain("B",lacticacid).
domain("B",release_b).
domain("B",admission_ic).
root((and,(notresponse,(A,er_registration,)),(notresponse,(B,er_registration,)))) :- iota("B",B),iota("A",A).
