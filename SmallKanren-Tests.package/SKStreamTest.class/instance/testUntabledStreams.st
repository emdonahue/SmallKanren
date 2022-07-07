tests-streaming
testUntabledStreams
	self assert: (SKGoal fail asStream) equals: SKStream failure.
	self assert: ((SKVar new === 1) asStream isKindOf: SKState).