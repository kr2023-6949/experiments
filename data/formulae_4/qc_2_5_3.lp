% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['admission_nc'], 'B': ['release_a']})
domain("A",admission_nc).
domain("A",release_a).
domain("A",crp).
domain("A",iv_liquid).
domain("A",release_c).
domain("B",release_a).
domain("B",release_b).
domain("B",release_e).
domain("B",return_er).
domain("B",er_registration).
root((and,(choice,(A,er_registration,)),(notchainresponse,(B,er_registration,)))) :- iota("B",B),iota("A",A).
