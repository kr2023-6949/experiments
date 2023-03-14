% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",er_triage).
domain("A",er_sepsis_triage).
domain("A",release_b).
domain("B",er_triage).
domain("B",release_b).
domain("B",lacticacid).
domain("B",er_sepsis_triage).
root((and,(precedence,(A,admission_nc,)),(choice,(B,iv_liquid,)))) :- iota("A",A),iota("B",B).
