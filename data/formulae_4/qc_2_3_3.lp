% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['admission_nc'], 'B': ['release_a']})
domain("A",admission_nc).
domain("A",crp).
domain("A",er_registration).
domain("B",release_a).
domain("B",leucocytes).
domain("B",release_e).
root((and,(choice,(A,er_registration,)),(notchainresponse,(B,er_registration,)))) :- iota("B",B),iota("A",A).
