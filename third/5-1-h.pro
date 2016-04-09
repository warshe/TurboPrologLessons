Domains
	slist=symbol*
Predicates
	subset(slist,slist)
Clauses
	subset([],Set).
	subset([X|Subset],[X|Set]):-subset(Subset,Set).
	subset([X|Subset],[Y|Set]):-subset([X|Subset],Set).