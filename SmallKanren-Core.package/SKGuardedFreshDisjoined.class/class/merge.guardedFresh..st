accessing
merge: a guardedFresh: b 	
	"Create a new constraint that unifies the patterns of the subclauses."
	^ (SKSubstitution empty unify: a pattern noWalk: b pattern) asGuarded: a fresh: b.