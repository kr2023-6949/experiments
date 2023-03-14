% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7eb0>, {'A': ['iv_antibiotics'], 'B': ['iv_antibiotics']})
domain("A",iv_antibiotics).
domain("A",iv_liquid).
domain("A",admission_ic).
domain("B",iv_antibiotics).
domain("B",release_a).
domain("B",admission_ic).
root((and,(choice,(A,er_triage,)),(respondedexistence,(B,crp,)))) :- iota("A",A),iota("B",B).
