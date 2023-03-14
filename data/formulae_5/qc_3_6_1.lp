% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",release_a).
domain("A",release_d).
domain("A",release_e).
domain("A",iv_liquid).
domain("A",release_c).
domain("A",return_er).
domain("B",er_registration).
domain("B",admission_nc).
domain("B",release_d).
domain("B",release_b).
domain("B",release_a).
domain("B",iv_liquid).
domain("C",admission_nc).
domain("C",release_c).
domain("C",release_b).
domain("C",crp).
domain("C",return_er).
domain("C",er_registration).
root((and,(notchainprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
