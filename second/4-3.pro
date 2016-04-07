Domains
slist=symbol*
Predicates
concaten(slist,slist,slist)
Clauses
concaten([],Y,Y).
concaten([Xh|X],Y,[Xh|Z]):-
concaten(X,Y,Z).