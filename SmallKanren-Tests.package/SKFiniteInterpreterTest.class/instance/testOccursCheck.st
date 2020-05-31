interpreter
testOccursCheck
	| sub |
	sub := #(x #(x) #(#(y) 1)) asConsTree.
	self assert: (interpreter occurs: #x in: #x sub: sub) succeeds.
	self assert: (interpreter occurs: #x in: #y sub: sub) succeeds.
	self assert: (interpreter occurs: #x in: 1 sub: sub) fails.
	self assert: (interpreter occurs: #x in: #x cons sub: sub) succeeds.
	self assert: (interpreter occurs: #x in: #y cons sub: sub) succeeds.
	self assert: (interpreter occurs: #x in: #z cons sub: sub) succeeds.
	self
		assert:
			[ :x :y | 
			x === #x & (y === 1)
				& (interpreter occurs: x in: y sub: #(x y z) asConsTree) ]
				asGoal fails