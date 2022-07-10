tests-streaming
testTabledMPlus
	| s r i c g |
	s := SKState new.
	i := SKIncomplete new goal: ["Incomplete"] asGoal.
	c := SKReusedStream new table: #reused; cache: #cache.
	r := SKRuntime new.
	r tables at: #reused put: (Dictionary with: #cache->SKTableCache new).
	g := ["Bind"] asGoal.
	
	self assert: ((s + c) isKindOf: SKComplete).
	self assert: (s + c) left identicalTo: s.
	self assert: ((c + s) isKindOf: SKComplete).
	self assert: (c + s) left identicalTo: s.
	
	self assert: ((i + c) isKindOf: SKMPlus).
	self assert: (i + c) left identicalTo: i.
	self assert: ((c + i) isKindOf: SKMPlus).
	self assert: (c + i) right identicalTo: i.
	
	self assert: ((c + SKReusedStream new) isKindOf: SKReusedMPlus).
	self assert: (c + SKReusedStream new) left identicalTo: c.
	self assert: ((c + SKReusedStream new) step: r) right identicalTo: c.
	
	self assert: (((c runtime: r ) + SKReusedStream new) stream isKindOf: SKReusedMPlus).
	self assert: ((c runtime: r ) + SKReusedStream new) stream left identicalTo: c.
	self assert: ((SKReusedStream new + (c runtime: r )) stream isKindOf: SKReusedMPlus).
	self assert: (SKReusedStream new + (c runtime: r )) stream right identicalTo: c.
	
	self assert: ((c bind: g runtime: r) isKindOf: SKBind).
	self assert: ((c bind: g runtime: r) + SKReusedStream new isKindOf: SKReusedMPlus).
	self assert: ((c bind: g runtime: r) + SKReusedStream new) left stream identicalTo: c.