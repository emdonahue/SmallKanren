tests - pattern
testMatcho
	self assert: [ :q | (1 cons: 2) matcho: #(1 . 2) ] asGoal succeeds.
	self deny: [ :q | (1 cons: 3) matcho: #(1 . 2) ] asGoal succeeds.
	self deny: [ :q | 1 matcho: #(1 . 2) ] asGoal succeeds.
	self assert: [ :q | {q matcho: #(1 . 2)} ] asGoal run first first equals: (1 cons: 2).