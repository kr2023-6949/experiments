% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bcef0a0>, {'A': ['return_er'], 'B': ['release_a'], 'C': ['er_triage']})
domain("A",return_er).
domain("A",er_registration).
domain("A",release_a).
domain("B",release_a).
domain("B",crp).
domain("B",release_e).
domain("C",er_triage).
domain("C",er_sepsis_triage).
domain("C",lacticacid).
root((and,(notchainresponse,(A,lacticacid,)),(and,(notresponse,(B,er_sepsis_triage,)),(existence1,(C,))))) :- iota("B",B),iota("A",A),iota("C",C).
