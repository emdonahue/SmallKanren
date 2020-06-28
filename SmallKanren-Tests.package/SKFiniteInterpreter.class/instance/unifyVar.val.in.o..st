unify
unifyVar: a val: b in: env o: nextEnv
	"Currently fails programs that would not pass occurs check. To test occurs checking, unify the negative occurs check with the branch that extends the package and a positive occurs check with a branch that returns an empty environment."

	^ [ :sub :const | 
	{self is: a in: self vars. 
		self is: b in: self nonVars.
		env === (sub cons: const cons).
		self occurs: a notIn: b sub: sub depth: (self listDepth min: self listLength).
		self extendPackage: a with: b in: env o: nextEnv }] asGoal