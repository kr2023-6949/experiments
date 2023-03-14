% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",release_b).
domain("A",iv_liquid).
domain("B",er_triage).
domain("B",er_registration).
domain("B",release_a).
root((and,(precedence,(A,admission_nc,)),(choice,(B,iv_liquid,)))) :- iota("A",A),iota("B",B).
