% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['admission_nc'], 'B': ['release_a']})
domain("A",admission_nc).
domain("A",admission_ic).
domain("A",iv_liquid).
domain("A",er_registration).
domain("A",return_er).
domain("A",er_sepsis_triage).
domain("B",release_a).
domain("B",admission_nc).
domain("B",release_c).
domain("B",er_triage).
domain("B",leucocytes).
domain("B",iv_liquid).
root((and,(choice,(A,er_registration,)),(notchainresponse,(B,er_registration,)))) :- iota("B",B),iota("A",A).
