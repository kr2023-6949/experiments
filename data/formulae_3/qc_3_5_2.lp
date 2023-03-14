% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['crp'], 'C': ['er_registration']})
domain("A",er_registration).
domain("A",lacticacid).
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("A",release_c).
domain("B",crp).
domain("B",admission_nc).
domain("B",return_er).
domain("B",admission_ic).
domain("B",er_sepsis_triage).
domain("C",er_registration).
domain("C",release_b).
domain("C",iv_antibiotics).
domain("C",crp).
domain("C",er_triage).
root((and,(notchainresponse,(A,iv_antibiotics,)),(and,(notchainresponse,(B,return_er,)),(precedence,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
