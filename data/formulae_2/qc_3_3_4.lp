% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['leucocytes'], 'B': ['admission_nc'], 'C': ['er_triage']})
domain("A",leucocytes).
domain("A",iv_liquid).
domain("A",release_c).
domain("B",admission_nc).
domain("B",er_triage).
domain("B",iv_antibiotics).
domain("C",er_triage).
domain("C",release_b).
domain("C",release_e).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notresponse,(B,er_registration,)),(notchainresponse,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
