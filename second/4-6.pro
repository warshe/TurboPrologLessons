Domains
slist=symbol*
Predicates
concaten(slist,slist,slist)
member(symbol,slist)
Clauses
concaten([],Y,Y).
concaten([Xh|X],Y,[Xh|Z]):-
concaten(X,Y,Z).
member(X,L):-
concaten(_,[X|_],L).