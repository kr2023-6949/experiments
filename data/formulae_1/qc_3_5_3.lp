% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",release_d).
domain("A",er_sepsis_triage).
domain("A",release_a).
domain("A",release_b).
domain("B",er_sepsis_triage).
domain("B",release_a).
domain("B",admission_ic).
domain("B",release_c).
domain("B",er_triage).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",admission_nc).
domain("C",er_triage).
domain("C",iv_liquid).
root((and,(alternateprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(choice,(C,er_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
