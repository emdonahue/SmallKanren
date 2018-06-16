tabling
copyTerm: aTerm
	"Copies the term, replacing all free variables with consistent, new free variables to avoid variable capture."
	<todo>
	"This walks nested terms twice. We could better integrate the term copier into reification to get the copy in one pass."
	^ SKTermCopier new reify: (self reify: aTerm).