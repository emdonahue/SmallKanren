member
testNemberoGround
	self assert: (empty nembero: 1) succeeds.
	self assert: (list nembero: 1 ) fails.
	self assert: (list nembero: 3 ) fails.
	self assert: (list nembero: 4 ) succeeds.