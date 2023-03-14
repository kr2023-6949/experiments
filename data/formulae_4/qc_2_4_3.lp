% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['admission_nc'], 'B': ['release_a']})
domain("A",admission_nc).
domain("A",lacticacid).
domain("A",release_e).
domain("A",admission_ic).
domain("B",release_a).
domain("B",release_c).
domain("B",release_b).
domain("B",lacticacid).
root((and,(choice,(A,er_registration,)),(notchainresponse,(B,er_registration,)))) :- iota("B",B),iota("A",A).
