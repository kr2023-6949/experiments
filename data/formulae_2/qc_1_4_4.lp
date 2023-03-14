% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7fec696f7f40>, {'A': ['er_triage']})
domain("A",er_triage).
domain("A",admission_ic).
domain("A",crp).
domain("A",admission_nc).
root((choice,(A,crp,))) :- iota("A",A).
