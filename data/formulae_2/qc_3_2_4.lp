% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['leucocytes'], 'B': ['admission_nc'], 'C': ['er_triage']})
domain("A",leucocytes).
domain("A",er_registration).
domain("B",admission_nc).
domain("B",release_e).
domain("C",er_triage).
domain("C",er_sepsis_triage).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notresponse,(B,er_registration,)),(notchainresponse,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
