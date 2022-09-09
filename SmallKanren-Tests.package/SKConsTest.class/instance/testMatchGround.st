matcho
testMatchGround
	self assert: (1 match: #(?) o: [ :a | SKGoal succeed ]) fails.
	self assert: [ :a | a match: #(?) o: [ :b | b === 1 ] ] asGoal runList first first equals: 1 cons.