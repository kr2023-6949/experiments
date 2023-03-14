% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['release_a']})
domain("A",return_er).
domain("A",er_sepsis_triage).
domain("A",release_c).
domain("B",release_a).
domain("B",er_triage).
domain("B",crp).
root((and,(notresponse,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
