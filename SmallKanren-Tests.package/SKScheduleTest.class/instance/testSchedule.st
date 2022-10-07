tests
testSchedule 
	self assert: (s addScheduledGoal: (SKScheduledFresh new block: [ :a | false ])) asAnswer equals: SKStream failure.