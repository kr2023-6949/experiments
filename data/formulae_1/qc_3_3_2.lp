% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['return_er']})
domain("A",release_a).
domain("A",release_c).
domain("A",iv_liquid).
domain("B",er_registration).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("C",return_er).
domain("C",leucocytes).
domain("C",er_sepsis_triage).
root((and,(notprecedence,(A,iv_antibiotics,)),(and,(choice,(B,return_er,)),(notresponse,(C,admission_nc,))))) :- iota("A",A),iota("B",B),iota("C",C).
