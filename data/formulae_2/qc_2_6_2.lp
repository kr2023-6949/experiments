% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_registration'], 'B': ['er_triage']})
domain("A",er_registration).
domain("A",admission_nc).
domain("A",release_d).
domain("A",release_a).
domain("A",crp).
domain("A",leucocytes).
domain("B",er_triage).
domain("B",release_d).
domain("B",lacticacid).
domain("B",crp).
domain("B",admission_ic).
domain("B",leucocytes).
root((and,(precedence,(A,admission_nc,)),(choice,(B,iv_liquid,)))) :- iota("A",A),iota("B",B).
