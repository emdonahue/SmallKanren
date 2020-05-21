tests
testNotEquals
	self assert: [ interpreter not: 1 equals: 2 ] asGoal succeeds.
	self assert: [ interpreter not: 1 equals: 1 ] asGoal fails.
	self
		assert:
			[ :a :b | a === #x & (b === #y) & (interpreter not: a equals: b) ]
				asGoal succeeds.
	self
		assert:
			[ :a :b | a === #x & (b === #x) & (interpreter not: a equals: b) ]
				asGoal fails.
				
			self
		assert:
			[ :a :b | a === #x & (b === 1) & (interpreter not: a equals: b type: interpreter vars) ]
				asGoal fails