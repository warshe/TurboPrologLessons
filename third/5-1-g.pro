Domains
	ilist=integer*
Predicates
	between(integer,integer,ilist)
Clauses
	between(N,N,[N]).
	between(N,M,[N|Ts]):-N<M,K=N+1,between(K,M,Ts).
	between(N,M,_):-N>M,fail.