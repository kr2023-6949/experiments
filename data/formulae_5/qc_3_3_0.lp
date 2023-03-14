% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['er_triage']})
domain("A",er_sepsis_triage).
domain("A",return_er).
domain("A",er_registration).
domain("B",iv_liquid).
domain("B",er_triage).
domain("B",release_d).
domain("C",er_triage).
domain("C",er_sepsis_triage).
domain("C",admission_nc).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,iv_antibiotics,)),(choice,(C,leucocytes,))))) :- iota("C",C),iota("B",B),iota("A",A).
