subset
testNsubsetoGround
	self assert: (Cons empty nsubseto: Cons empty) fails.
	self assert: ((1 cons: 2 cons) nsubseto: Cons empty) fails.
	self assert: (Cons empty nsubseto: (1 cons: 2 cons)) succeeds.
	self assert: ((1 cons: 2 cons) nsubseto: 1 cons) fails.
	self assert: ((1 cons: 2 cons) nsubseto: 2 cons) fails.
	self assert: ((1 cons: 2 cons) nsubseto: (1 cons: 2 cons)) fails.
	self assert: ((1 cons: 2 cons) nsubseto: (2 cons: 1 cons)) fails.
	self assert: (3 nsubseto: 1 cons) fails.
	self assert: ((1 cons: 2 cons) nsubseto: 3 cons) succeeds.
	self assert: (3 nsubseto: Cons empty) fails.