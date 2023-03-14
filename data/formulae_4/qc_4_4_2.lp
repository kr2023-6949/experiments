% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7feaa6ac70a0>, {'A': ['release_a'], 'B': ['er_triage'], 'C': ['er_registration'], 'D': ['iv_liquid']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",lacticacid).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",return_er).
domain("B",release_a).
domain("B",crp).
domain("C",er_registration).
domain("C",release_c).
domain("C",crp).
domain("C",lacticacid).
domain("D",iv_liquid).
domain("D",release_c).
domain("D",release_e).
domain("D",admission_ic).
root((and,(respondedexistence,(A,er_registration,)),(and,(choice,(B,lacticacid,)),(and,(choice,(C,er_sepsis_triage,)),(respondedexistence,(D,crp,)))))) :- iota("C",C),iota("B",B),iota("D",D),iota("A",A).
