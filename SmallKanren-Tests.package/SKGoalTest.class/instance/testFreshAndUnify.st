and
testFreshAndUnify
	self
		assert: [ :a :b | a === b cons & [ :c | c === b & (c === 1) ] ] asGoal runList
		equals: #(#(#(1) 1)) asConsR.
		
	self
		assert: [ :a :b | [ :c | c === b & (c === 1) ] asGoal & (a === b cons ) ] asGoal runList
		equals: #(#(#(1) 1)) asConsR.