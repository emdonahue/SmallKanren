laziness
asGuarded: a fresh: b
		^ SKGuardedDisjunction new 
		var: a var;
		pattern: (self reify: a pattern); 
		clauses: a clauses, b clauses.