parsing
nonPairUnifications: a with: b in: env o: nextEnv
^ ((self
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
							 (a === b & (self is: a in: self nonLists) & (env === nextEnv))
						|
							((self not: a equals: b type: self nonVars) & (nextEnv === Cons empty)))