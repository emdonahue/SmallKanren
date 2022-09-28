tests
testUnifyVar
	self assert: ((s check: x constraint: x=/=1,(x=/=2)) unify: x with: y) isState.
	self assert: ((s check: x constraint: x=/=y,(x=/=2)) unify: x with: y) isFailure.
	self assert: ((s check: x constraint: x=/=1,(x=/=y)) unify: x with: y) isFailure.
	self assert: ((s check: x constraint: x=/=y,numbero) unify: x with: y) isFailure.
	self assert: ((s check: x constraint: numbero,(x=/=y)) unify: x with: y) isFailure.