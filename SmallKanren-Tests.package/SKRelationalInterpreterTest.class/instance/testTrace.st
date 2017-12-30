tests
testTrace
	| p s trace |
	self skip.
	trace := #(#(1 2 2 2 2 3) #(1 1 2 2 2 3) #(1 2 2 1 2 3)) asConsTree.
	p := #(#list #y #(#quote 42)) asConsTree.
	s := ((eval value: y value: env value: x) runCPS: (SKTraceModel new trace: trace)) next.
	self assert: s => y unifies: p