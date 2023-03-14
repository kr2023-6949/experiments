% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['release_a'], 'B': ['iv_antibiotics'], 'C': ['release_a']})
domain("A",release_a).
domain("A",iv_antibiotics).
domain("A",admission_ic).
domain("A",er_triage).
domain("A",lacticacid).
domain("B",iv_antibiotics).
domain("B",iv_liquid).
domain("B",admission_nc).
domain("B",crp).
domain("B",release_e).
domain("C",release_a).
domain("C",release_e).
domain("C",release_d).
domain("C",release_c).
domain("C",lacticacid).
root((and,(notchainresponse,(A,er_triage,)),(and,(respondedexistence,(B,er_triage,)),(notresponse,(C,admission_nc,))))) :- iota("C",C),iota("B",B),iota("A",A).
