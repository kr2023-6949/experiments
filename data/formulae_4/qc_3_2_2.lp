% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['release_a'], 'B': ['iv_antibiotics'], 'C': ['release_a']})
domain("A",release_a).
domain("A",admission_nc).
domain("B",iv_antibiotics).
domain("B",er_triage).
domain("C",release_a).
domain("C",er_triage).
root((and,(notchainresponse,(A,er_triage,)),(and,(respondedexistence,(B,er_triage,)),(notresponse,(C,admission_nc,))))) :- iota("C",C),iota("B",B),iota("A",A).
