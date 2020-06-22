accessing
walkVar: var env: env o: o
	^ [ :sub :store | env === (sub cons: store) & (self walkVar: var in: sub o: o) ]
		asGoal