% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['release_a'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",release_e).
domain("A",iv_liquid).
domain("A",release_c).
domain("A",release_a).
domain("A",lacticacid).
domain("B",release_a).
domain("B",release_c).
domain("B",release_e).
domain("B",iv_antibiotics).
domain("B",admission_nc).
domain("B",iv_liquid).
domain("C",er_triage).
domain("C",admission_nc).
domain("C",crp).
domain("C",er_registration).
domain("C",release_a).
domain("C",return_er).
root((and,(notchainresponse,(A,lacticacid,)),(and,(notresponse,(B,er_sepsis_triage,)),(existence1,(C,))))) :- iota("B",B),iota("A",A),iota("C",C).
