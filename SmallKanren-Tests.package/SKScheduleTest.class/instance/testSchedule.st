tests
testSchedule 
	| s |
	s := SKState new.
	self assert: ((s addSchedule: (SKScheduledFresh new block: [ :x | false ])) advanceSchedule) equals: SKStream failure.