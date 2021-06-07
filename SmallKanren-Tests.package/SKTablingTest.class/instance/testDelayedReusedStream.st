classic tabling
testDelayedReusedStream
	self
		assert:

	([ :start :end :pair | 
	pair isEmptyo & (self path: start to: end)
		|
			((pair carCdro: [ :a :d | (self path: start to: end) & (a === start) & (d === end) ])
				& (pair carCdro: [ :a :d | (self path: start to: end) & (a === start) & (d === end) ])) ] asGoal run) size equals: 12.