tests-normalizing
testNormalizeSingle
	self assert: ((x =/= 1) asConstraint reduceWithInitialValue: 1) isUnsatisfiable.
	self assert: ((x =/= 2) asConstraint reduceWithInitialValue: 1) isSatisfied.
	self assert: ((x =/= y) asConstraint reduceWithInitialValue: 1) isDisequality.
	self assert: ((x =/= y) asConstraint reduceWithInitialValue: 1) left equals: y.
	self assert: (x =/= y & (y === 1)) succeeds