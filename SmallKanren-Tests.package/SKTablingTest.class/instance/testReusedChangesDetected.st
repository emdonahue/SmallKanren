classic tabling
testReusedChangesDetected
	self
		assert:
			[ :x | 
			([ :a | a === 1 ] tabled: #test2 inputs: {x.}) & (x === 5) 
				| (SKVar new carCdro: [ :a :d | SKGoal fail ])
				| (([ :a | SKVar new carCdro: [ :b :c | 
						[ :d | d === 4 ] tabled: #test2 inputs: {a.} ] ] 
					tabled: #test inputs: {x.}) & (x === 2))
				| ([ :a | a === 1 ] tabled: #test inputs: {x.}) ] asGoal run
		equals: 1 cons cons.