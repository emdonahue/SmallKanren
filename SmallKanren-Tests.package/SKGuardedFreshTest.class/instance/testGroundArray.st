array
testGroundArray
	self assert: ({1 cons} match: #((_)) o: [ :a | x===a ]) asAnswer => x equals: 1.
	self assert: ({1 cons. 2 cons} match: #((_) (_)) o: [ :a :b | x===(a cons: b) ]) asAnswer => x equals: (1 cons: 2).
	self assert: ({1 cons. 1 cons} match: #((_1) (_1)) o: [ :a | x===a ]) asAnswer => x equals: 1.
	self assert: ({1 cons. 2 cons} match: #((_1) (_1)) o: [ :a | x===a ]) asAnswer equals: failure.
	self assert: (#(1 2) match: #(_ _) o: [ :a :b | x===(a cons: b) ]) asAnswer => x equals: (1 cons: 2).
	self assert: ({x cons. y cons} match: #((1) (2)) o: [ true ]) asAnswer => (x cons: y) equals: (1 cons: 2).
	self assert: ({x cons. y cons} match: #((1) (_)) o: [ :b | b===2 ]) asAnswer => (x cons: y) equals: (1 cons: 2).
	