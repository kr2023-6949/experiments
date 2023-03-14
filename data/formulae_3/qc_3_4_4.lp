% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['er_registration'], 'B': ['return_er'], 'C': ['er_sepsis_triage']})
domain("A",er_registration).
domain("A",leucocytes).
domain("A",release_a).
domain("A",iv_liquid).
domain("B",return_er).
domain("B",lacticacid).
domain("B",er_sepsis_triage).
domain("B",iv_liquid).
domain("C",er_sepsis_triage).
domain("C",iv_liquid).
domain("C",er_triage).
domain("C",release_c).
root((and,(notchainresponse,(A,return_er,)),(and,(notchainresponse,(B,iv_antibiotics,)),(choice,(C,release_a,))))) :- iota("B",B),iota("A",A),iota("C",C).
