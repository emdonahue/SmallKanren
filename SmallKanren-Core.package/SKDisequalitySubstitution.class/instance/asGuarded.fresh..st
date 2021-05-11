laziness
asGuarded: a fresh: b
		^ SKGuardedFreshDisjoined new 
		pattern: (self reify: a pattern); 
		clauses: a clauses, b clauses.