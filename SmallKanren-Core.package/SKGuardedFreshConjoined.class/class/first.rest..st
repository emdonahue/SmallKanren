accessing
first: a rest: b
	^ self new 
		pattern: ((SKSubstitution empty unify: a pattern noWalk: b pattern) reify: a pattern); 
		first: a; 
		rest: b