Predicates
	book(symbol)
	associate(symbol,symbol) 
	intrest(symbol) % intresting books
Clauses 
	book(adventures).
	book(history).
	book(fantasy).
	book(lyrics).
	book(verse).
	book(magazine).
	book(workbook).
	book(dictionary).
	book(journal).
	book(surreal):-book(fantasy), book(history).
	book(for_teacher):-book(dictionary).
	book(for_study):-book(workbook).
	book(futurism):-book(fantasy).
	book(prose):-book(lyrics),book(verse).
	book(for_enjoy):-book(fantasy);book(adventures).
	book(for_study):-book(history);book(lyrics);book(verse);book(workbook);book(dictionary).
	associate(history,fantasy).
	associate(history,adventures).
	associate(adventures,fantasy).
	associate(adventures,history).
	associate(fantasy,history).
	associate(fantasy,adventures)
	intrest(X):-book(X),associate(X,_).
	intrest(Y):-book(Y),associate(_,Y).
	intrest(Z):-book(magazine);book(journal).
	
	book(its_book):-book(_).
	