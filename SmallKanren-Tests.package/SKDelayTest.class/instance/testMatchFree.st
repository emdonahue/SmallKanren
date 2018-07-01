matching
testMatchFree
	self assert: [ :a | a match: #(?) o: [ :one | one === 1 ] ] asGoal run first equals: 1 cons cons.
	self assert: [ :a | a match: #(? ?) o: [ :one :two | one === 1 & (two === 2) ] ] asGoal run first equals: (1 cons: 2 cons) cons.
	self assert: [ :a | a match: #(1 ?) o: [ :two |  (two === 2) ] ] asGoal run first equals: (1 cons: 2 cons) cons.
	self assert: [ :a | a match: #(? #'.' ?) o: [ :one :two | one === 1 & (two === 2) ] ] asGoal run first equals: (1 cons: 2) cons.
	self assert: [ :a | a match: #(? #(?)) o: [ :one :two | one === 1 & (two === 2) ] ] asGoal run first equals: (1 cons: 2 cons cons) cons.