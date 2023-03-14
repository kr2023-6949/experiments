% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",crp).
domain("A",release_a).
domain("A",lacticacid).
domain("A",release_d).
domain("A",release_e).
domain("B",return_er).
domain("B",iv_antibiotics).
domain("B",er_registration).
domain("B",lacticacid).
domain("B",release_b).
domain("B",er_triage).
root((and,(respondedexistence,(A,admission_nc,)),(notchainresponse,(B,release_a,)))) :- iota("B",B),iota("A",A).
