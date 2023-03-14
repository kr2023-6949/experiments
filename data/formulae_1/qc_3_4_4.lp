% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f90d0c730a0>, {'A': ['return_er'], 'B': ['admission_nc'], 'C': ['release_a']})
domain("A",return_er).
domain("A",er_sepsis_triage).
domain("A",iv_liquid).
domain("A",er_triage).
domain("B",admission_nc).
domain("B",lacticacid).
domain("B",er_sepsis_triage).
domain("B",release_e).
domain("C",release_a).
domain("C",er_registration).
domain("C",leucocytes).
domain("C",release_e).
root((and,(notchainresponse,(A,release_a,)),(and,(respondedexistence,(B,er_registration,)),(notresponse,(C,iv_antibiotics,))))) :- iota("A",A),iota("B",B),iota("C",C).
