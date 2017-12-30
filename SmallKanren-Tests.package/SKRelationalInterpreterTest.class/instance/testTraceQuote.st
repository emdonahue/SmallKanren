tests
testTraceQuote
	| p s trace |
	self skip.
	trace := #(#(1)) asConsTree.
	p := #(#quote 42) asConsTree.
	s := ((eval value: x value: env value: y) runCPS: (SKTraceModel new trace: trace)) next.
	self assert: s => x unifies: p