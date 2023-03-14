% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['er_registration'], 'D': ['iv_liquid']})
domain("A",release_a).
domain("A",er_registration).
domain("B",er_triage).
domain("B",release_c).
domain("C",er_registration).
domain("C",crp).
domain("D",iv_liquid).
domain("D",admission_nc).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,lacticacid,)),(and,(choice,(C,er_sepsis_triage,)),(respondedexistence,(D,crp,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
