parsing
unifyVar: a val: b in: env o: nextEnv
	"(self occurs: a in: b sub: sub) & (nextEnv === Cons empty)"
"(self occurs: a notIn: b sub: sub)"
	^ [ :sub :const | 
	(self is: a in: self vars) & (self is: b in: self nonVars)
		& (env === (sub cons: const cons))
		&
			(SKGoal fail
				|
					(SKGoal succeed
						&
							(self
								extendPackage: a
								with: b
								in: env
								o: nextEnv))) ] asGoal