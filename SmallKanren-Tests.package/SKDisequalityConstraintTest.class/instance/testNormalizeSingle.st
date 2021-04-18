tests-normalizing
testNormalizeSingle
	self assert: ((x =/= 1) asConstraint unify: x with: 1) isUnsatisfiable.
	self assert: ((x =/= 2) asConstraint unify: x with: 1) isDisequality.
	self assert: ((x =/= y) asConstraint unify: x with: 1) isDisequality.
	self assert: ((x =/= y) asConstraint unify: y with: 1) isDisequality.
	self assert: (x =/= y & (y === 1)) succeeds