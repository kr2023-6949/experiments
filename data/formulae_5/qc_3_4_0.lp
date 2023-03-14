% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['er_triage']})
domain("A",er_sepsis_triage).
domain("A",er_registration).
domain("A",iv_antibiotics).
domain("A",admission_nc).
domain("B",iv_liquid).
domain("B",release_e).
domain("B",return_er).
domain("B",admission_nc).
domain("C",er_triage).
domain("C",er_registration).
domain("C",iv_liquid).
domain("C",release_a).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,iv_antibiotics,)),(choice,(C,leucocytes,))))) :- iota("C",C),iota("B",B),iota("A",A).
