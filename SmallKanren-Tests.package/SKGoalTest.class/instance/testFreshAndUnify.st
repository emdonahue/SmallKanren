and
testFreshAndUnify
	self
		assert: [ :a :b | a === b cons & [ :c | c === b & (c === 1) ] ] asGoal run
		equals: #(#(#(1) 1)) asConsTree.
		
	self
		assert: [ :a :b | [ :c | c === b & (c === 1) ] asGoal & (a === b cons ) ] asGoal run
		equals: #(#(#(1) 1)) asConsTree.