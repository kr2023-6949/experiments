% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",er_registration).
domain("B",return_er).
domain("B",release_b).
domain("B",release_a).
domain("B",er_registration).
root((and,(respondedexistence,(A,admission_nc,)),(notchainresponse,(B,release_a,)))) :- iota("B",B),iota("A",A).
