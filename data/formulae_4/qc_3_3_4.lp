% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",release_e).
domain("A",lacticacid).
domain("B",er_sepsis_triage).
domain("B",release_b).
domain("B",release_c).
domain("C",iv_antibiotics).
domain("C",release_a).
domain("C",release_c).
root((and,(notchainprecedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
