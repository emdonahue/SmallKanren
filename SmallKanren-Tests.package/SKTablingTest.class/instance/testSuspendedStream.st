consumer
testSuspendedStream
	| r |
	r := SKRunner new.
	r tables at: #path put: (Dictionary with: #(1 2) asConsTree -> #(#(1 2) #(1 2) #(1 2)) asConsTree).
	r stream: ([ :a :b | a === 1 & (b === 2) & (self path: a to: b) ] asGoal run: SKState new runner: r).
	self assert: r run size equals: 3.