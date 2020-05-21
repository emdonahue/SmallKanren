tests
testOccursCheck
	self assert: (interpreter occurs: #x in: #x cons) succeeds.
	self assert: (interpreter occurs: #x in: #y cons) fails.
	self assert: (interpreter occurs: #x in: (#y cons: #x)) succeeds.
	self assert: (interpreter occurs: #x in: (#y cons: #x cons)) succeeds.
	self
		assert:
			[ :a :b | a === #x & (b === #x cons) & (interpreter occurs: a in: b) ]
				asGoal succeeds