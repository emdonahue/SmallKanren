tests
testFailurePreemptsIncomplete
	self assert: (SKFailure singleton incomplete: SKState new history: nil heuristic: SKInterleaving new) isEmptyStream