% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid']})
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("A",er_triage).
domain("A",release_c).
domain("A",release_e).
domain("B",er_triage).
domain("B",return_er).
domain("B",release_b).
domain("B",release_c).
domain("B",release_a).
domain("C",iv_liquid).
domain("C",admission_ic).
domain("C",admission_nc).
domain("C",iv_antibiotics).
domain("C",release_d).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
