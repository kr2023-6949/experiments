% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['return_er']})
domain("A",release_a).
domain("A",release_b).
domain("A",iv_antibiotics).
domain("A",iv_liquid).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",iv_antibiotics).
domain("B",leucocytes).
domain("C",return_er).
domain("C",er_sepsis_triage).
domain("C",leucocytes).
domain("C",release_d).
root((and,(notprecedence,(A,iv_antibiotics,)),(and,(choice,(B,return_er,)),(notresponse,(C,admission_nc,))))) :- iota("A",A),iota("B",B),iota("C",C).
