tests-closing
testFailOnClosedCache
	| k r c |
	k := (SKVar tag: #x) cons.
	c := 1 cons.
	r := SKRuntime new table: #test cache: k	 put: SKTableCache new close.
	"Fail on start (in runtime before call to reuse)"
	self assert: ((SKRuntime new table: #test cache: k cons put: SKTableCache new close)
		table: #test inputs: Cons empty outputs: k cons run: SKState new in: []) isFailure.

	"Fail having detected the close after all answers have been returned (first in reused>>step)."
	self assert: ((SKReusedStream new table: #test; cacheKey: k cons; consumed: c) step:
		(SKRuntime new table: #test cache: k cons put: (SKTableCache new close entries: c))) isFailure.
	
	"Fail when returning an answer (incomplete -> complete -> reused -> state)"
	self assert: ((SKReusedStream new table: #test; cacheKey: k cons; state: SKState new; outputs: k) step:
		(SKRuntime new table: #test cache: k cons put: (SKTableCache new close entries: 
			(SKTableCacheEntry new argv: 1 cons; pseudoCounts: SKPseudoCounts new) cons))) isState.