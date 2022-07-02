tests
testTraceQuote
	| p s trace |
	self skip.
	trace := #(#(1)) asConsR.
	p := #(#quote 42) asConsR.
	s := ((eval value: x value: env value: y) runCPS: (SKTraceModel new trace: trace)) next.
	self assert: s => x unifies: p