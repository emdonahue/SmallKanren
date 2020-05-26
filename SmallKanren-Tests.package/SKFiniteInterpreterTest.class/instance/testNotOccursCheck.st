tests
testNotOccursCheck
	| sub |
	sub := #(x #(x) #(#(2) 1)) asConsTree.
	self assert: (interpreter occurs: #x notIn: #x sub: sub) fails.
	self assert: (interpreter occurs: #x notIn: #y sub: sub) fails.
	self assert: (interpreter occurs: #x notIn: 1 sub: sub) succeeds.
	self assert: (interpreter occurs: #x notIn: #x cons sub: sub) fails.
	self assert: (interpreter occurs: #x notIn: #y cons sub: sub) fails.
	self
		assert: (interpreter occurs: #x notIn: #z cons sub: sub) succeeds.
	self
		assert: [ :x :y | 
			x === #x & (y === 1)
				& (interpreter occurs: x notIn: y sub: #(x y z) asConsTree) ] asGoal succeeds