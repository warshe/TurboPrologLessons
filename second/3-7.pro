Domains
	i=integer
Predicates
	ost(i,i,i)
Clauses
ost(M,N,M):-M<N,!.
ost(M,N,K):-M1=M-N,ost(M1,N,K).