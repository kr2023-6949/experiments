% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['return_er'], 'B': ['admission_nc'], 'C': ['release_a']})
domain("A",return_er).
domain("A",lacticacid).
domain("A",release_b).
domain("A",admission_ic).
domain("A",leucocytes).
domain("B",admission_nc).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",release_b).
domain("B",lacticacid).
domain("C",release_a).
domain("C",release_b).
domain("C",release_e).
domain("C",er_registration).
domain("C",return_er).
root((and,(notchainresponse,(A,release_a,)),(and,(respondedexistence,(B,er_registration,)),(notresponse,(C,iv_antibiotics,))))) :- iota("A",A),iota("B",B),iota("C",C).
