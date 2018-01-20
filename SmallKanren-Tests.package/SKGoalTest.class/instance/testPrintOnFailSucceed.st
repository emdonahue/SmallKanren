printing
testPrintOnFailSucceed
	self assert: SKGoal fail asString equals: 'Fail'.
	self assert: SKGoal succeed asString equals: 'Succeed'.
