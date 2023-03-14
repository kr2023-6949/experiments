% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['leucocytes'], 'B': ['admission_nc'], 'C': ['er_triage']})
domain("A",leucocytes).
domain("A",iv_antibiotics).
domain("A",crp).
domain("A",iv_liquid).
domain("B",admission_nc).
domain("B",admission_ic).
domain("B",release_d).
domain("B",iv_antibiotics).
domain("C",er_triage).
domain("C",crp).
domain("C",release_d).
domain("C",release_e).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notresponse,(B,er_registration,)),(notchainresponse,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
