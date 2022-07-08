tests-streaming
testMPlus
	| x y s r i |
	x := SKVar tag: #x.
	y := SKVar tag: #y.
	s := SKState new.
	i := SKIncomplete new.
	r := SKRuntime new.
	
	self assert: ((s + SKState new) isKindOf: SKComplete).
	self assert: (s + SKState new) left identicalTo: s.
	
	self assert: ((s + (SKState new runtime: r)) stream isKindOf: SKComplete).
	self assert: (s + (SKState new runtime: r)) stream left identicalTo: s.
	self assert: (((SKState new runtime: r) + s) stream isKindOf: SKComplete).
	self assert: ((SKState new runtime: r) + s) stream right identicalTo: s.
	
	self assert: ((i + SKIncomplete new) isKindOf: SKMPlus).
	self assert: (i + SKIncomplete new) left identicalTo: i.
	self assert: (((i runtime: r) + SKIncomplete new) stream isKindOf: SKMPlus).
	self assert: ((i runtime: r) + SKIncomplete new) stream left identicalTo: i.
	self assert: ((i + (SKIncomplete new runtime: r)) stream isKindOf: SKMPlus).
	self assert: (i + (SKIncomplete new runtime: r)) stream left identicalTo: i.
	
	self assert: ((s + i) isKindOf: SKComplete).
	self assert: (s + i) left identicalTo: s.
	self assert: (((s runtime: r) + i) stream isKindOf: SKComplete).
	self assert: ((s runtime: r) + i) stream left identicalTo: s.
	self assert: ((s + (i runtime: r)) stream isKindOf: SKComplete).
	self assert: (s + (i runtime: r)) stream left identicalTo: s.
	self assert: ((i + s) isKindOf: SKComplete).
	self assert: (i + s) left identicalTo: s.
	self assert: (((i runtime: r) + s) stream isKindOf: SKComplete).
	self assert: ((i runtime: r) + s) stream left identicalTo: s.
	self assert: ((i + (s runtime: r)) stream isKindOf: SKComplete).
	self assert: (i + (s runtime: r)) stream left identicalTo: s.
	
	