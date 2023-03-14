% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['release_a'], 'B': ['iv_antibiotics'], 'C': ['release_a']})
domain("A",release_a).
domain("A",lacticacid).
domain("A",release_c).
domain("A",er_registration).
domain("A",crp).
domain("A",release_b).
domain("B",iv_antibiotics).
domain("B",release_c).
domain("B",crp).
domain("B",return_er).
domain("B",release_b).
domain("B",admission_nc).
domain("C",release_a).
domain("C",er_triage).
domain("C",lacticacid).
domain("C",iv_liquid).
domain("C",release_b).
domain("C",admission_nc).
root((and,(notchainresponse,(A,er_triage,)),(and,(respondedexistence,(B,er_triage,)),(notresponse,(C,admission_nc,))))) :- iota("C",C),iota("B",B),iota("A",A).
