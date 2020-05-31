interpreting
unifyNonPairs: arg1 with: arg2 in: env o: nextEnv
	^ env === Cons empty & (nextEnv === Cons empty)
		| [ :a :b :substitution :constraints | 
			env === (substitution cons: constraints cons)
				& (self walk: arg1 in: substitution o: a)
				& (self walk: arg2 in: substitution o: b)
				&
					(self nonPairUnifications: a with: b in: env o: nextEnv) ]