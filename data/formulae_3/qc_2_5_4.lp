% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",er_triage).
domain("A",crp).
domain("A",iv_liquid).
domain("A",leucocytes).
domain("B",return_er).
domain("B",release_b).
domain("B",release_d).
domain("B",er_registration).
domain("B",iv_antibiotics).
root((and,(respondedexistence,(A,admission_nc,)),(notchainresponse,(B,release_a,)))) :- iota("B",B),iota("A",A).
