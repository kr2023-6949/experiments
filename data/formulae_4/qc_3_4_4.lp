% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",release_d).
domain("A",release_a).
domain("B",er_sepsis_triage).
domain("B",crp).
domain("B",leucocytes).
domain("B",release_b).
domain("C",iv_antibiotics).
domain("C",release_b).
domain("C",iv_liquid).
domain("C",er_triage).
root((and,(notchainprecedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
