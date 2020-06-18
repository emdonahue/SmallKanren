interpreting
unify: arg1 with: arg2 in: env o: nextEnv
	"						|
							((self not: a equals: b type: self nonVars) & (nextEnv === Cons empty))"

	^ env === Cons empty & (nextEnv === Cons empty)
		| [ :a :b :substitution :store | 
			env === (substitution cons: store cons)
				& (self walk: arg1 in: substitution o: a)
				& (self walk: arg2 in: substitution o: b)
				&
					((self
						unifyVar: a
						var: b
						in: env
						o: nextEnv)
						|
							(self
								unifyVar: a
								val: b
								in: env
								o: nextEnv)
						|
							(self
								unifyList: a
								list: b
								in: env
								o: nextEnv
								depth: 1
								length: 1)
						| (a === b & (self is: a in: self values) & (env === nextEnv))) ]