node(C) :- root(C).
node(LHS; RHS) :- node((and,LHS,RHS)).
node(LHS; RHS) :- node((or,LHS,RHS)).
node(C) :- node((neg,C)).
atomic((T,A)) :- node((T,A)), T != neg.

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

accepts(C,TID) :- root(C), holds(C,TID).
rejects(C,TID) :- root(C), not holds(C,TID), trace(TID,_).

#show.
#show accepts/2.
#show rejects/2.
#show root/1.