% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['crp'], 'C': ['er_registration']})
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",er_triage).
domain("A",admission_nc).
domain("B",crp).
domain("B",lacticacid).
domain("B",iv_liquid).
domain("B",leucocytes).
domain("C",er_registration).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",er_sepsis_triage).
root((and,(notchainresponse,(A,iv_antibiotics,)),(and,(notchainresponse,(B,return_er,)),(precedence,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
