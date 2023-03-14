% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227f40>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",er_sepsis_triage).
domain("A",release_c).
domain("B",er_registration).
domain("B",return_er).
domain("B",crp).
domain("B",release_d).
domain("C",admission_nc).
domain("C",admission_ic).
domain("C",iv_antibiotics).
domain("C",iv_liquid).
root((and,(notchainprecedence,(A,er_triage,)),(and,(choice,(B,er_sepsis_triage,)),(notchainresponse,(C,return_er,))))) :- iota("C",C),iota("B",B),iota("A",A).
