% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['iv_antibiotics'], 'B': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",return_er).
domain("A",admission_nc).
domain("A",release_d).
domain("A",er_registration).
domain("A",er_triage).
domain("B",iv_antibiotics).
domain("B",er_registration).
domain("B",release_d).
domain("B",release_e).
domain("B",release_a).
domain("B",release_c).
root((and,(choice,(A,er_triage,)),(respondedexistence,(B,crp,)))) :- iota("A",A),iota("B",B).
