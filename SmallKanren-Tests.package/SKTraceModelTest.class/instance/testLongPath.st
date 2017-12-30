as yet unclassified
testLongPath
	| m |
	m := SKTraceModel new trace: (1 cons cons: 1 cons cons).
	self deny: (m pathStillValid: (1 cons cons: 1 cons cons: 1 cons cons)).