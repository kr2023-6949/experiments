% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['er_sepsis_triage']})
domain("A",er_registration).
domain("A",admission_nc).
domain("A",release_e).
domain("A",leucocytes).
domain("A",release_b).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",release_c).
domain("B",leucocytes).
domain("B",er_triage).
domain("B",release_a).
domain("B",release_d).
domain("C",er_sepsis_triage).
domain("C",lacticacid).
domain("C",leucocytes).
domain("C",er_registration).
domain("C",iv_liquid).
domain("C",release_d).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,iv_antibiotics,)),(choice,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
