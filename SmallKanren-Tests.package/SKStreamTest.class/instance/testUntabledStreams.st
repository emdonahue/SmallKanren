tests-streaming
testUntabledStreams
	| x y s r |
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	s := SKState new.
	r := SKRuntime new.
	self assert: (SKGoal fail asStream) equals: SKStream failure.
	self assert: ((x === 1) asStream isKindOf: SKState).
	self assert: (s + SKState new) left identicalTo: s.
	self assert: (s + (SKState new runtime: r)) stream left identicalTo: s.
	self assert: ((SKState new runtime: r) + s) stream right identicalTo: s.
	self assert: (({x === 1. y === 2} conde asStream) isKindOf: SKComplete).
	self assert: ({x === 1. y === 2} conde asStream left reify: x) equals: 1.
	self assert: ({x === 1. y === 2} conde asStream right reify: y) equals: 2.