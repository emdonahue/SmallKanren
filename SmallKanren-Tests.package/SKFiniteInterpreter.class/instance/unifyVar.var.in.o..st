unify
unifyVar: a var: b in: env o: nextEnv
	"Eliminates programs that unify vars with themselves for speed."
	^ (self not: a equals: b type: self vars)
		& (self extendPackage: a with: b in: env o: nextEnv)