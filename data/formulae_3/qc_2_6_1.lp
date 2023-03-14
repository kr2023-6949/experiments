% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fba6bceff40>, {'A': ['return_er'], 'B': ['release_a']})
domain("A",return_er).
domain("A",release_c).
domain("A",release_e).
domain("A",er_registration).
domain("A",admission_ic).
domain("A",lacticacid).
domain("B",release_a).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",leucocytes).
domain("B",iv_liquid).
domain("B",lacticacid).
root((and,(notresponse,(A,admission_nc,)),(notchainresponse,(B,iv_antibiotics,)))) :- iota("B",B),iota("A",A).
