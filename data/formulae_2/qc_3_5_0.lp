% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['er_triage'], 'B': ['return_er'], 'C': ['er_registration']})
domain("A",er_triage).
domain("A",lacticacid).
domain("A",release_e).
domain("A",release_b).
domain("A",release_c).
domain("B",return_er).
domain("B",release_d).
domain("B",er_triage).
domain("B",release_a).
domain("B",admission_nc).
domain("C",er_registration).
domain("C",release_a).
domain("C",release_d).
domain("C",return_er).
domain("C",release_e).
root((and,(choice,(A,crp,)),(and,(notprecedence,(B,iv_antibiotics,)),(choice,(C,er_sepsis_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
