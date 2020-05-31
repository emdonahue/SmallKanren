interpreting
unify: arg1 with: arg2 in: env o: nextEnv
	^ env === Cons empty & (nextEnv === Cons empty)
		| [ :a :b :substitution :constraints | 
			env === (substitution cons: constraints cons)
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
								unifyVar: b
								val: a
								in: env
								o: nextEnv)
						|
							(self
								unifyList: a
								list: b
								in: env
								o: nextEnv) | (a === b & (self is: a in: self nonLists) & (env === nextEnv))
						|
							((self not: a equals: b type: self nonVars) & (nextEnv === Cons empty))) ]