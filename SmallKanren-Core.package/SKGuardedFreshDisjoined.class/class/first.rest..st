accessing
first: a rest: b 	
	"Create a new constraint that unifies the patterns of the subclauses."
	^ self new 
		pattern: ((SKSubstitution empty unify: a pattern noWalk: b pattern) reify: a pattern); 
		clauses: a clauses, b clauses.