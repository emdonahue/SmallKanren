classic tabling
testDelayedTabledBind
	self
		assert:
			[ :start :end :pair | (self path: start to: end) & (pair carCdro: [ :a :d | self path: start to: end ]) & (pair carCdro: [ :a :d | self path: start to: end ]) ]
				asGoal run size
		equals: 6.