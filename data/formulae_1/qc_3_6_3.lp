% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",release_e).
domain("A",er_triage).
domain("A",release_a).
domain("A",return_er).
domain("A",lacticacid).
domain("B",er_sepsis_triage).
domain("B",iv_liquid).
domain("B",release_c).
domain("B",release_a).
domain("B",er_triage).
domain("B",er_registration).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",release_e).
domain("C",er_sepsis_triage).
domain("C",release_a).
domain("C",er_triage).
root((and,(alternateprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(choice,(C,er_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
