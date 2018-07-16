classic tabling
testDelayedTabledBind
	self
		assert:
			[ :start :end :pair | (self path: start to: end) & (pair carCdrIn: [ :a :d | self path: start to: end ]) & (pair carCdrIn: [ :a :d | self path: start to: end ]) ]
				asGoal run size
		equals: 6.