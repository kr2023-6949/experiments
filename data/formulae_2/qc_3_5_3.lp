% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['return_er'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",return_er).
domain("A",release_a).
domain("A",lacticacid).
domain("A",release_e).
domain("A",admission_ic).
domain("B",er_registration).
domain("B",release_a).
domain("B",iv_liquid).
domain("B",release_e).
domain("B",release_c).
domain("C",admission_nc).
domain("C",release_d).
domain("C",release_e).
domain("C",lacticacid).
domain("C",leucocytes).
root((and,(choice,(A,er_registration,)),(and,(notchainresponse,(B,release_a,)),(choice,(C,er_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
