tests - pair
testCompat
	self skip.
	self assert: ({x carCdro: [ :a :d | a===1 ]. x match2: #(_ | _) o: [ :a :d | d===2]} asGoal answer reify: x) equals: (1 cons: 2).
	