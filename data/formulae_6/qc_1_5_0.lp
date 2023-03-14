% defaultdict(<function generate_query_formulae.<locals>.<lambda> at 0x7f4c332fb0a0>, {'A': ['release_a']})
domain("A",release_a).
domain("A",iv_liquid).
domain("A",lacticacid).
domain("A",er_triage).
domain("A",admission_nc).
root((notresponse,(A,iv_antibiotics,))) :- iota("A",A).
