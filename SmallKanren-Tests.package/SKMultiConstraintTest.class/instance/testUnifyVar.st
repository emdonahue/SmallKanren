tests
testUnifyVar
	self assert: ((s add: x constraint: x=/=1,(x=/=2)) unify: x with: y) isState.
	self assert: ((s add: x constraint: x=/=y,(x=/=2)) unify: x with: y) isFailure.
	self assert: ((s add: x constraint: x=/=1,(x=/=y)) unify: x with: y) isFailure.
	self assert: ((s add: x constraint: x=/=y,numbero) unify: x with: y) isFailure.
	self assert: ((s add: x constraint: numbero,(x=/=y)) unify: x with: y) isFailure.