constraints
checkDiseq: diseq in: env o: out
	^ [ :a :b :unified | 	
	{(a cons: b) === diseq.
		self unify: a with: b in: env o: unified.
		{{(self package: env not: unified) & (env === out).
			(unified === env) & out isEmptyo}}} ] asGoal