tabling
copyTerm: aTerm
	"Copies the term, replacing all free variables with consistent, new free variables to avoid variable capture."
	^ SKTermCopier new reify: (self reify: aTerm)