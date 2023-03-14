% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f7d59227eb0>, {'A': ['er_sepsis_triage'], 'B': ['iv_liquid'], 'C': ['er_triage']})
domain("A",er_sepsis_triage).
domain("A",er_triage).
domain("B",iv_liquid).
domain("B",release_a).
domain("C",er_triage).
domain("C",lacticacid).
root((and,(choice,(A,er_triage,)),(and,(respondedexistence,(B,iv_antibiotics,)),(choice,(C,leucocytes,))))) :- iota("C",C),iota("B",B),iota("A",A).
