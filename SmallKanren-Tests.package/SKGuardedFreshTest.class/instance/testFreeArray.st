tests - array
testFreeArray
	self assert: ({x. y} match: #(1 2) o: [ true ]) asAnswer => (x cons: y) equals: (1 cons: 2).
	self assert: {x===1. y===2. {x. y} match: #(_ _) o: [ :a :b | z===(x cons: y) ]} asGoal asAnswer => z equals: (1 cons: 2).
	self assert: {{x. y} match: #(_ _) o: [ :a :b | z===(x cons: y) ]. x===1. y===2} asGoal asAnswer => z equals: (1 cons: 2).