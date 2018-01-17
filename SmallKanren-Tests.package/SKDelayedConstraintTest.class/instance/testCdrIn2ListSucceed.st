cdrcarin
testCdrIn2ListSucceed
	"Test that delayed goals undelay when unified with ground."

	| g s |
	g := 
			(1 cons
				carCdrIn2: [ :a :d | 
					x === (a cons: d) ]).
	s := g run: SKState new.
	self deny: s isDelayed.
	self assert: s => x equals: 1 cons