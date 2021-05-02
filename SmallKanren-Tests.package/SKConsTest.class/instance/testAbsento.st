tests
testAbsento
	self assert: (empty absento: 1) equals: SKGoal succeed.
	self assert: (pair absento: 3) equals: SKGoal succeed.
	self assert: (pair absento: 1) equals: SKGoal fail.
	self assert: (pair absento: 2) equals: SKGoal fail.
	self assert: (list absento: 3) equals: SKGoal fail.
	self assert: (list absento: 4) equals: SKGoal succeed.
	self assert: ((x cons: 2) absento: 1) asConstraint isAbsento.
	self assert: ((1 cons: x) absento: 2) asConstraint isAbsento.
	self assert: ((1 cons: x) absento: 1) equals: SKGoal fail.
	self assert: ((x cons: 2) absento: 2) equals: SKGoal fail.
	self assert: (1 absento: 2) equals: SKGoal succeed.
	self assert: (1 absento: 1) equals: SKGoal fail.
	