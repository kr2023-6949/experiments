% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['release_a'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",release_d).
domain("A",lacticacid).
domain("A",release_e).
domain("B",release_a).
domain("B",release_d).
domain("B",er_sepsis_triage).
domain("B",release_c).
domain("C",er_triage).
domain("C",iv_antibiotics).
domain("C",lacticacid).
domain("C",release_b).
root((and,(notchainresponse,(A,lacticacid,)),(and,(notresponse,(B,er_sepsis_triage,)),(existence1,(C,))))) :- iota("B",B),iota("A",A),iota("C",C).
