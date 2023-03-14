% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",release_a).
domain("A",release_d).
domain("B",er_registration).
domain("B",lacticacid).
domain("C",admission_nc).
domain("C",release_c).
root((and,(notchainprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
