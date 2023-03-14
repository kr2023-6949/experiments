% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['er_sepsis_triage']})
domain("A",er_registration).
domain("A",release_a).
domain("A",iv_antibiotics).
domain("B",return_er).
domain("B",admission_ic).
domain("B",release_c).
domain("C",er_sepsis_triage).
domain("C",admission_nc).
domain("C",release_d).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,iv_antibiotics,)),(choice,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
