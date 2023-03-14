% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['iv_antibiotics'], 'B': ['er_triage'], 'C': ['iv_liquid']})
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("A",return_er).
domain("A",er_triage).
domain("B",er_triage).
domain("B",crp).
domain("B",iv_antibiotics).
domain("B",release_b).
domain("C",iv_liquid).
domain("C",er_sepsis_triage).
domain("C",lacticacid).
domain("C",release_b).
root((and,(notchainprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(respondedexistence,(C,iv_antibiotics,))))) :- iota("C",C),iota("B",B),iota("A",A).
