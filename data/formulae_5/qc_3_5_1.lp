% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",release_a).
domain("A",crp).
domain("A",release_d).
domain("A",lacticacid).
domain("A",release_b).
domain("B",er_registration).
domain("B",er_sepsis_triage).
domain("B",release_d).
domain("B",admission_nc).
domain("B",er_triage).
domain("C",admission_nc).
domain("C",lacticacid).
domain("C",admission_ic).
domain("C",release_c).
domain("C",release_a).
root((and,(notchainprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
