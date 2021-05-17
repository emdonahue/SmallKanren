tests
testSchedule 
	self assert: ((s addSchedule: (SKScheduledFresh new block: [ :a | false ])) run: r) equals: SKStream failure.