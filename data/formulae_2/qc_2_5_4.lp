% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['iv_antibiotics'], 'B': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",return_er).
domain("A",lacticacid).
domain("A",leucocytes).
domain("A",er_registration).
domain("B",iv_antibiotics).
domain("B",admission_nc).
domain("B",release_d).
domain("B",leucocytes).
domain("B",release_b).
root((and,(choice,(A,er_triage,)),(respondedexistence,(B,crp,)))) :- iota("A",A),iota("B",B).
