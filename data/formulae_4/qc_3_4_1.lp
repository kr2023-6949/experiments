% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['iv_antibiotics']})
domain("A",release_a).
domain("A",admission_ic).
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("B",er_registration).
domain("B",er_sepsis_triage).
domain("B",admission_nc).
domain("B",iv_antibiotics).
domain("C",iv_antibiotics).
domain("C",er_registration).
domain("C",admission_ic).
domain("C",er_triage).
root((and,(notresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
