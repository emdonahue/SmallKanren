tests
testSchedule 
	self assert: (s addSchedule: (SKScheduledFresh new block: [ :a | false ])) asAnswer equals: SKStream failure.