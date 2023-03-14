% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['er_triage']})
domain("A",er_sepsis_triage).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",leucocytes).
domain("A",lacticacid).
domain("B",iv_liquid).
domain("B",return_er).
domain("B",release_b).
domain("B",crp).
domain("B",release_c).
domain("C",er_triage).
domain("C",iv_liquid).
domain("C",admission_ic).
domain("C",release_b).
domain("C",release_c).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,iv_antibiotics,)),(choice,(C,leucocytes,))))) :- iota("C",C),iota("B",B),iota("A",A).
