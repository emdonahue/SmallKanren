tests-streaming
testTabledMPlus
	| s r i c g cc |
	s := SKSubstitution new.
	i := SKIncomplete new goal: ["Incomplete"] asGoal.
	c := SKReusedStream new table: #reused; cacheKey: #cache.
	cc := SKReusedStream new table: #reused; cacheKey: #cache; cache: 1 cons.
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
	self assert: (c + i) left identicalTo: i.
	
	self assert: ((cc + c) isKindOf: SKMPlus).
	self assert: (cc + c) left identicalTo: cc.
	self assert: ((c + cc) isKindOf: SKMPlus).
	self assert: (c + cc) left identicalTo: cc.
	
	self assert: ((c + SKReusedStream new) isKindOf: SKReusedMPlus).
	self assert: (c + SKReusedStream new) left identicalTo: c.
	self assert: ((c + SKReusedStream new) step: r) left identicalTo: c.
	
	self assert: (((c runtime: r ) + SKReusedStream new) stream isKindOf: SKReusedMPlus).
	self assert: ((c runtime: r ) + SKReusedStream new) stream left identicalTo: c.
	self assert: ((SKReusedStream new + (c runtime: r )) stream isKindOf: SKReusedMPlus).
	self assert: (SKReusedStream new + (c runtime: r )) stream right identicalTo: c.
	
	self assert: ((c bind: g runtime: r) isKindOf: SKBind).
	self assert: ((c bind: g runtime: r) + SKReusedStream new isKindOf: SKReusedMPlus).
	self assert: ((c bind: g runtime: r) + SKReusedStream new) left stream identicalTo: c.