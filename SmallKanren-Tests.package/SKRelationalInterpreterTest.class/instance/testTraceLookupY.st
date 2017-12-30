tests
testTraceLookupY
	| p s trace |
	self skip.
	trace := #(#(1 2 2)) asConsTree.
	p := #y asConsTree.
	s := ((eval value: x value: env value: y) runCPS: (SKTraceModel new trace: trace)) next.
	self assert: s peek isState.
	self assert: s peek trace equals: trace.
	self assert: s peek => x unifies: p