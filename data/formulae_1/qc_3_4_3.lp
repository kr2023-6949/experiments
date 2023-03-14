% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['er_registration'], 'B': ['er_sepsis_triage'], 'C': ['iv_antibiotics']})
domain("A",er_registration).
domain("A",release_c).
domain("A",return_er).
domain("A",release_a).
domain("B",er_sepsis_triage).
domain("B",er_triage).
domain("B",crp).
domain("B",leucocytes).
domain("C",iv_antibiotics).
domain("C",release_c).
domain("C",admission_nc).
domain("C",lacticacid).
root((and,(alternateprecedence,(A,return_er,)),(and,(respondedexistence,(B,er_registration,)),(choice,(C,er_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
