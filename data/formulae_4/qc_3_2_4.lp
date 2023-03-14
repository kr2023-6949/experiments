% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac7eb0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",admission_ic).
domain("B",er_sepsis_triage).
domain("B",lacticacid).
domain("C",iv_antibiotics).
domain("C",lacticacid).
root((and,(notchainprecedence,(A,iv_antibiotics,)),(and,(choice,(B,release_a,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
