% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c73eb0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['return_er']})
domain("A",release_a).
domain("A",admission_nc).
domain("A",iv_liquid).
domain("A",crp).
domain("A",release_c).
domain("A",release_e).
domain("B",er_registration).
domain("B",admission_nc).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("B",leucocytes).
domain("B",admission_ic).
domain("C",return_er).
domain("C",er_triage).
domain("C",er_sepsis_triage).
domain("C",crp).
domain("C",leucocytes).
domain("C",admission_nc).
root((and,(notprecedence,(A,iv_antibiotics,)),(and,(choice,(B,return_er,)),(notresponse,(C,admission_nc,))))) :- iota("A",A),iota("B",B),iota("C",C).
