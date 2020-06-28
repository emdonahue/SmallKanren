unify
unify: arg1 with: arg2 in: env o: nextEnv depth: depth length: length
	"Include this to enable programs that contain failed unifications: ((self not: a equals: b type: self nonVars) & (nextEnv === Cons empty))"

	"If the search has already failed, just pass the substitution along."

	^ env === Cons empty & (nextEnv === Cons empty)
		| [ :a :b :substitution :store | 
			{(env === (substitution cons: store cons)).
			(self walk: arg1 in: substitution o: a).
			(self walk: arg2 in: substitution o: b).
			{{self unifyVar: a var: b in: env o: nextEnv.
				self unifyVar: a val: b in: env o: nextEnv.
				self unifyList: a list: b 	in: env 	o: nextEnv depth: depth 	length: length.
				a === b & (self is: a in: self values) & (env === nextEnv)}}} ]