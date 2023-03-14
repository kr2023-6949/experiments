% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid']})
domain("A",iv_antibiotics).
domain("A",release_b).
domain("A",admission_nc).
domain("A",release_c).
domain("A",admission_ic).
domain("A",er_registration).
domain("B",er_triage).
domain("B",admission_ic).
domain("B",crp).
domain("B",release_c).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("C",iv_liquid).
domain("C",release_b).
domain("C",return_er).
domain("C",er_sepsis_triage).
domain("C",admission_ic).
domain("C",er_triage).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
