schedule
testSchedule 
	self assert: (SKSubstitution new addScheduledGoal: (SKScheduledFresh new block: [ :a | false ])) asAnswer equals: SKStream failure.