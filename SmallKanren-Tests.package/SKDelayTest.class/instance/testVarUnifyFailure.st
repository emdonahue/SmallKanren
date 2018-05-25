tests
testVarUnifyFailure
	self assert: [ :a :b :c | (a car: 1 cdrIn: [ :d | d isEmptyo ]) & (c =/= b & (b === c)) ] asGoal fails