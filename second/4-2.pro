Domains
slist=symbol*
Predicates
member(symbol,slist)
Clauses
member(X,[X|Tail]).
member(X,[Head|Tail]):-
member(X,Tail).