% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['return_er']})
domain("A",return_er).
domain("A",admission_ic).
domain("A",er_registration).
domain("B",return_er).
domain("B",release_e).
domain("B",admission_ic).
root((and,(respondedexistence,(A,admission_nc,)),(notchainresponse,(B,release_a,)))) :- iota("B",B),iota("A",A).
