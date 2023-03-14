% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",crp).
domain("A",admission_nc).
domain("A",er_triage).
domain("A",leucocytes).
domain("A",release_c).
domain("B",er_sepsis_triage).
domain("B",lacticacid).
domain("B",release_a).
domain("B",release_e).
domain("B",crp).
domain("B",iv_antibiotics).
domain("C",iv_antibiotics).
domain("C",er_triage).
domain("C",iv_liquid).
domain("C",lacticacid).
domain("C",release_b).
domain("C",leucocytes).
root((and,(notchainprecedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
