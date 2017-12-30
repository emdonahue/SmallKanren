as yet unclassified
testSinglePath
	| m |
	m := SKTraceModel new trace: (2 cons: 1 cons) cons.
	self assert: (m pathStillValid: 1 cons cons).
	self deny: (m pathStillValid: 2 cons cons)