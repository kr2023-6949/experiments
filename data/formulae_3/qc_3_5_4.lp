% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['er_sepsis_triage']})
domain("A",er_registration).
domain("A",admission_nc).
domain("A",release_a).
domain("A",lacticacid).
domain("A",admission_ic).
domain("B",return_er).
domain("B",leucocytes).
domain("B",crp).
domain("B",release_e).
domain("B",iv_antibiotics).
domain("C",er_sepsis_triage).
domain("C",release_d).
domain("C",return_er).
domain("C",release_b).
domain("C",crp).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,iv_antibiotics,)),(choice,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
