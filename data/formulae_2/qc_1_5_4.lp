% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",release_e).
domain("A",iv_antibiotics).
domain("A",er_registration).
domain("A",er_sepsis_triage).
root((choice,(A,crp,))) :- iota("A",A).
