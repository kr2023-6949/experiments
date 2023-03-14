% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",lacticacid).
domain("A",leucocytes).
domain("B",er_sepsis_triage).
domain("B",iv_liquid).
domain("B",release_c).
domain("C",iv_antibiotics).
domain("C",er_sepsis_triage).
domain("C",release_c).
root((and,(alternateprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(choice,(C,er_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
