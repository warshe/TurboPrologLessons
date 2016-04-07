Predicates 
	Fib(integer,integer)
Clauses 
	Fib(0,1):-!.
	Fib(1,1):-!.
	Fib(N,F):-N1=N-1,N2=N-2,Fib(N1,F1),Fib(N2,F2),F=F1+F2.