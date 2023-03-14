% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['er_sepsis_triage']})
domain("A",er_registration).
domain("A",admission_nc).
domain("B",return_er).
domain("B",iv_antibiotics).
domain("C",er_sepsis_triage).
domain("C",release_b).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,iv_antibiotics,)),(choice,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
