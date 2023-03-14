% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid']})
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("A",admission_ic).
domain("B",er_triage).
domain("B",release_d).
domain("B",release_e).
domain("C",iv_liquid).
domain("C",crp).
domain("C",admission_nc).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
