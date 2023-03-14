% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['release_a']})
domain("A",return_er).
domain("A",er_triage).
domain("B",release_a).
domain("B",er_registration).
root((and,(notresponse,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
