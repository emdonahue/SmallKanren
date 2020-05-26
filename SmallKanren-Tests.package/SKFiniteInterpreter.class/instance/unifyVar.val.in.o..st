parsing
unifyVar: a val: b in: env o: nextEnv
	^ [ :sub :const | 
	(self is: a in: self vars) & (self is: b in: self nonVars)
		& (env === (sub cons: const cons))
		&
			((self occurs: a in: b sub: sub) & (nextEnv === Cons empty)
				|
					((self occurs: a notIn: b sub: sub)
						&
							(self
								extendPackage: a
								with: b
								in: env
								o: nextEnv))) ] asGoal