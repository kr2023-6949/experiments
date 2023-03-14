% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",crp).
domain("A",admission_ic).
domain("A",release_c).
domain("A",lacticacid).
domain("B",er_triage).
domain("B",admission_nc).
domain("B",release_e).
domain("B",return_er).
domain("B",release_b).
root((and,(precedence,(A,admission_nc,)),(choice,(B,iv_liquid,)))) :- iota("A",A),iota("B",B).
