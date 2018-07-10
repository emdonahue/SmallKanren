classic tabling
testDelayedReusedStream
	self
		assert:
			[ :start :end :pair | 
			(self path: start to: end) & pair isEmptyo
				|
					((pair carCdrIn: [ :a :d | (self path: start to: end) & (a === start) & (d === end) ])
						& (pair carCdrIn: [ :a :d | (self path: start to: end) & (a === start) & (d === end) ])) ] asGoal run size
		equals: 12.