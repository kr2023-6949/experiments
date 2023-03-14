% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['iv_antibiotics']})
domain("A",release_a).
domain("A",leucocytes).
domain("A",release_b).
domain("A",crp).
domain("A",release_e).
domain("A",iv_liquid).
domain("B",er_registration).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",return_er).
domain("B",admission_ic).
domain("B",leucocytes).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",release_e).
domain("C",admission_nc).
domain("C",release_b).
domain("C",admission_ic).
root((and,(notresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
