% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['release_a']})
domain("A",return_er).
domain("A",release_e).
domain("A",crp).
domain("A",er_sepsis_triage).
domain("B",release_a).
domain("B",release_d).
domain("B",release_b).
domain("B",lacticacid).
root((and,(notresponse,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
