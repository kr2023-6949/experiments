% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['return_er'], 'B': ['admission_nc'], 'C': ['release_a']})
domain("A",return_er).
domain("A",release_c).
domain("A",release_a).
domain("A",release_b).
domain("A",lacticacid).
domain("A",admission_ic).
domain("B",admission_nc).
domain("B",leucocytes).
domain("B",crp).
domain("B",iv_liquid).
domain("B",er_triage).
domain("B",lacticacid).
domain("C",release_a).
domain("C",admission_nc).
domain("C",release_b).
domain("C",crp).
domain("C",return_er).
domain("C",iv_antibiotics).
root((and,(notchainresponse,(A,release_a,)),(and,(respondedexistence,(B,er_registration,)),(notresponse,(C,iv_antibiotics,))))) :- iota("A",A),iota("B",B),iota("C",C).
