% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_registration'], 'C': ['iv_antibiotics']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",release_b).
domain("B",er_registration).
domain("B",release_c).
domain("B",release_e).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",leucocytes).
root((and,(notresponse,(A,er_sepsis_triage,)),(and,(choice,(B,er_sepsis_triage,)),(respondedexistence,(C,crp,))))) :- iota("C",C),iota("B",B),iota("A",A).
