matching
testMatchEnsuresGoals
	self assert: [ :a | a match: #(?) o: [ :one | [ :other | one === other & (other === 1) ] ] ] asGoal run first equals: 1 cons cons.
