% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['return_er'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",return_er).
domain("A",release_a).
domain("A",er_sepsis_triage).
domain("A",leucocytes).
domain("A",iv_antibiotics).
domain("A",release_c).
domain("B",er_registration).
domain("B",admission_ic).
domain("B",release_a).
domain("B",leucocytes).
domain("B",release_c).
domain("B",return_er).
domain("C",admission_nc).
domain("C",release_e).
domain("C",er_sepsis_triage).
domain("C",admission_ic).
domain("C",return_er).
domain("C",er_triage).
root((and,(choice,(A,er_registration,)),(and,(notchainresponse,(B,release_a,)),(choice,(C,er_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
