% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",admission_nc).
domain("B",er_triage).
domain("B",release_e).
root((and,(precedence,(A,admission_nc,)),(choice,(B,iv_liquid,)))) :- iota("A",A),iota("B",B).
