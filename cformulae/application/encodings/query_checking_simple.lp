1 { iota(VAR,VAL): domain(VAR,VAL) } 1 :- domain(VAR,_).

node(C) :- root(C).
node(LHS; RHS) :- node((and,LHS,RHS)).
node(LHS; RHS) :- node((or,LHS,RHS)).
node(C) :- node((neg,C)).
atomic((T,A)) :- node((T,A)), T != neg.

holds(C,@atomic_check(C)) :- atomic(C).

support(C,S) :- S = #sum{F,TID: holds(C,TID), trace(TID,F)}, node(C).
support(C,S) :- S = #sum{F,TID: holds(C,TID), trace(TID,F)}, atomic(C).
:- node(C), support(C,S), S < support_threshold.

holds(C,@atomic_check(C)) :- atomic(C).

holds((and,LHS,RHS),TID) :-
	holds(LHS,TID),
	holds(RHS,TID),
	node((and,LHS,RHS)).

holds((or,LHS,RHS),TID) :-
	node((or,LHS,RHS)),
	holds(LHS,TID).
holds((or,LHS,RHS),TID) :-
	node((or,LHS,RHS)),
	holds(RHS,TID).

holds((neg,C),TID) :-
	node((neg,C)),
	not holds(C,TID),
	trace(TID,_).


#show.
#show iota/2.
#show support(C,S): root(C), support(C,S).