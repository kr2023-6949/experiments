% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['leucocytes'], 'B': ['admission_nc'], 'C': ['er_triage']})
domain("A",leucocytes).
domain("A",return_er).
domain("A",er_registration).
domain("A",admission_nc).
domain("A",release_d).
domain("A",crp).
domain("B",admission_nc).
domain("B",er_registration).
domain("B",er_sepsis_triage).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("B",return_er).
domain("C",er_triage).
domain("C",crp).
domain("C",release_a).
domain("C",iv_antibiotics).
domain("C",release_d).
domain("C",release_e).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notresponse,(B,er_registration,)),(notchainresponse,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
