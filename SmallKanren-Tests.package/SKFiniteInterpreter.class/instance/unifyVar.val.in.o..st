unify
unifyVar: a val: b in: env o: nextEnv
	"(self occurs: a in: b sub: sub) & (nextEnv === Cons empty)"

	"(self occurs: a notIn: b sub: sub)"

	"to add occurs checks, conjoin positive occurs check with a failure (nextEnv === ()) and negative occurs check with a success"

	^ [ :sub :const | 
	(self is: a in: self vars) & (self is: b in: self nonVars)
		& (env === (sub cons: const cons))
		& (self occurs: a notIn: b sub: sub depth: (self listDepth min: self listLength))
		&
			(self
				extendPackage: a
				with: b
				in: env
				o: nextEnv) ] asGoal