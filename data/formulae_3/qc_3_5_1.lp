% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['release_a'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",crp).
domain("A",release_d).
domain("A",er_triage).
domain("A",release_b).
domain("B",release_a).
domain("B",return_er).
domain("B",release_b).
domain("B",iv_antibiotics).
domain("B",release_d).
domain("C",er_triage).
domain("C",release_c).
domain("C",admission_nc).
domain("C",release_e).
domain("C",iv_antibiotics).
root((and,(notchainresponse,(A,lacticacid,)),(and,(notresponse,(B,er_sepsis_triage,)),(existence1,(C,))))) :- iota("B",B),iota("A",A),iota("C",C).
