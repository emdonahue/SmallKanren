laziness
asGuarded: a fresh: b
		^ SKGuardedFreshPatternedDisjoined new 
		var: a var;
		pattern: (self reify: a pattern); 
		clauses: a clauses, b clauses.