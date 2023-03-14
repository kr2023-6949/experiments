% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",release_d).
domain("A",admission_nc).
domain("A",lacticacid).
domain("A",release_b).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",release_b).
domain("B",crp).
domain("B",release_a).
domain("C",iv_antibiotics).
domain("C",leucocytes).
domain("C",release_a).
domain("C",release_e).
domain("C",crp).
root((and,(notchainprecedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
