% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['er_triage']})
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",er_registration).
domain("A",crp).
domain("A",release_a).
domain("A",release_b).
domain("B",iv_liquid).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("B",er_registration).
domain("B",crp).
domain("B",admission_nc).
domain("C",er_triage).
domain("C",leucocytes).
domain("C",er_sepsis_triage).
domain("C",release_e).
domain("C",iv_antibiotics).
domain("C",admission_ic).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,iv_antibiotics,)),(choice,(C,leucocytes,))))) :- iota("C",C),iota("B",B),iota("A",A).
