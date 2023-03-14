% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f70a0>, {'A': ['leucocytes'], 'B': ['admission_nc'], 'C': ['er_triage']})
domain("A",leucocytes).
domain("A",admission_nc).
domain("A",er_triage).
domain("A",lacticacid).
domain("A",iv_liquid).
domain("B",admission_nc).
domain("B",release_b).
domain("B",er_sepsis_triage).
domain("B",er_registration).
domain("B",leucocytes).
domain("C",er_triage).
domain("C",lacticacid).
domain("C",release_a).
domain("C",release_c).
domain("C",admission_nc).
root((and,(choice,(A,er_sepsis_triage,)),(and,(notresponse,(B,er_registration,)),(notchainresponse,(C,release_a,))))) :- iota("A",A),iota("B",B),iota("C",C).
