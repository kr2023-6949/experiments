% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['return_er'], 'B': ['er_registration'], 'C': ['admission_nc']})
domain("A",return_er).
domain("A",release_e).
domain("B",er_registration).
domain("B",er_sepsis_triage).
domain("C",admission_nc).
domain("C",er_sepsis_triage).
root((and,(choice,(A,er_registration,)),(and,(notchainresponse,(B,release_a,)),(choice,(C,er_triage,))))) :- iota("A",A),iota("B",B),iota("C",C).
