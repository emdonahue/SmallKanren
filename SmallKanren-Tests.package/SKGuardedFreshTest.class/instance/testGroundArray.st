tests - array
testGroundArray
	self assert: ({1 cons} match: #((_)) o: [ :a | x===a ]) asAnswer => x equals: 1.
	self assert: ({1 cons. 2 cons} match: #((_) (_)) o: [ :a :b | x===(a cons: b) ]) asAnswer => x equals: (1 cons: 2).