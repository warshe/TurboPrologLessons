Domains
slist=symbol*
Predicates
last(slist,symbol)
Clauses
last([X|[]],X).
last([_|Z],X):-
last(Z,X).