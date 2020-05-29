parsing
unifyList: a list: b in: env o: nextEnv
^ [ :c :d :e :f :nenv |
	(a === (c cons: d)) &
	(b === (e cons: f)) &
	(self unify: c with: e in: env o: nenv)
	& (self unify: d with: f in: nenv o: nextEnv)
	 ] asGoal