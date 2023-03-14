% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",release_a).
domain("A",crp).
domain("A",admission_nc).
domain("B",er_registration).
domain("B",release_e).
domain("B",iv_antibiotics).
domain("C",admission_nc).
domain("C",er_triage).
domain("C",iv_liquid).
root((and,(notchainprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
