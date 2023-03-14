partition(1..k).
1 { assign(C,P): root(C) } l :- partition(P).
subset_rejects(P,TID) :- trace(TID,_), assign(C,P), rejects(C,TID).
subset_accepts(P,TID) :- partition(P), trace(TID,_), not subset_rejects(P,TID).
:- trace(TID,_), #count{P: subset_accepts(P,TID)} != 1.
:- #count{TID: subset_accepts(P,TID)} = 0, partition(P).

%faulty(TID) :- subset_accepts(P,TID), subset_accepts(P',TID), P < P'.
%faulty(TID) :- trace(TID,_), not subset_accepts(_,TID).
%faulty(TID) :- subset_accepts(P,TID), not subset_rejects(P',TID), partition(P'), P' != P.
%:- faulty(TID), trace(TID,_).
induced(P,N) :- partition(P), N = #count{TID: subset_accepts(P,TID)}.

#show assign/2.
%#show faulty/1.
#show induced/2.