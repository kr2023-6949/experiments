% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['release_a']})
domain("A",return_er).
domain("A",iv_liquid).
domain("A",release_d).
domain("A",er_triage).
domain("A",lacticacid).
domain("B",release_a).
domain("B",crp).
domain("B",release_e).
domain("B",leucocytes).
domain("B",iv_liquid).
root((and,(notresponse,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
