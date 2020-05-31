interpreting
unifyList: a list: b in: env o: nextEnv depth: depth length: length

	^ [ :c :d :e :f :nenv | 
	a === (c cons: d cons) & (b === (e cons: f cons))
		&
			(self
				unifyVar: c
				val: e
				in: env
				o: nenv)
		&
			(self
				unifyVar: d
				val: f
				in: nenv
				o: nextEnv) ] asGoal