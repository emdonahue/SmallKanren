parsing
unify: arg1 with: arg2 in: env o: nextEnv
	^ [ :a :b :substitution :constraints | 
	env === (substitution cons: constraints cons)
		& (self walk: arg1 in: substitution o: a)
		& (self walk: arg2 in: substitution o: b) &
		((a === b) & (env === nextEnv)) ]