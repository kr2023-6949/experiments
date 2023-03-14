% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",iv_liquid).
domain("A",release_e).
root((choice,(A,crp,))) :- iota("A",A).
