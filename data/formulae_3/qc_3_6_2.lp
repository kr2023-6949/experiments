% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['crp'], 'C': ['er_registration']})
domain("A",er_registration).
domain("A",lacticacid).
domain("A",crp).
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("B",crp).
domain("B",return_er).
domain("B",er_sepsis_triage).
domain("B",iv_liquid).
domain("B",release_b).
domain("B",leucocytes).
domain("C",er_registration).
domain("C",release_e).
domain("C",admission_nc).
domain("C",lacticacid).
domain("C",crp).
domain("C",release_b).
root((and,(notchainresponse,(A,iv_antibiotics,)),(and,(notchainresponse,(B,return_er,)),(precedence,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
