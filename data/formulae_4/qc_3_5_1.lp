% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['iv_antibiotics']})
domain("A",release_a).
domain("A",admission_ic).
domain("A",er_triage).
domain("A",release_d).
domain("A",er_registration).
domain("B",er_registration).
domain("B",lacticacid).
domain("B",er_triage).
domain("B",release_e).
domain("B",release_b).
domain("C",iv_antibiotics).
domain("C",return_er).
domain("C",lacticacid).
domain("C",release_a).
domain("C",admission_ic).
root((and,(notresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
