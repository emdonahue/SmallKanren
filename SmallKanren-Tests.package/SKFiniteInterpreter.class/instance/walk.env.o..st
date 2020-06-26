walk
walk: var env: env o: o
	^ [ :sub :store | { env === (sub cons: store). (self walk: var in: sub o: o)} ]
		asGoal