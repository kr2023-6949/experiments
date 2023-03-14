% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['release_a'], 'B': ['crp'], 'C': ['release_a']})
domain("A",release_a).
domain("A",release_e).
domain("A",release_d).
domain("A",release_b).
domain("A",iv_liquid).
domain("A",crp).
domain("B",crp).
domain("B",release_e).
domain("B",release_c).
domain("B",admission_nc).
domain("B",er_sepsis_triage).
domain("B",er_triage).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
domain("C",release_d).
domain("C",leucocytes).
domain("C",admission_nc).
root((and,(notchainprecedence,(A,admission_nc,)),(and,(notchainprecedence,(B,return_er,)),(respondedexistence,(C,er_registration,))))) :- iota("B",B),iota("A",A),iota("C",C).
