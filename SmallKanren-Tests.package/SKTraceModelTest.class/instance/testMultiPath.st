as yet unclassified
testMultiPath
	| m |
	m := SKTraceModel new trace: ((2 cons: 1 cons) cons: (4 cons: 1 cons) cons).
	self assert: (m pathStillValid: (1 cons cons: (4 cons: 1 cons) cons)).
	self assert: (m pathStillValid: (1 cons cons)).
	self deny: (m pathStillValid: (3 cons cons: (4 cons: 1 cons) cons))
	"self deny: (m pathStillValid: (1 cons cons: 1 cons cons))"