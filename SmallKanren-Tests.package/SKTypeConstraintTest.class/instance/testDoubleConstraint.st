property
testDoubleConstraint
	[ :const1 :const2 | 
	self class
		constraint: const1
		constraint: const2
 ] asGoal runList
		do: [ :cc | 
		(cc as: Array)	bind: [ :c1 :c2  | 
			self assert: ((c1 asGoal: x) & (c2 asGoal: x)) fails.
			self assert: (y === x & (c1 asGoal: y) & (c2 asGoal: x)) fails.
			self assert: (x === y & (c1 asGoal: y) & (c2 asGoal: x)) fails.
			self assert: ((c1 asGoal: y) & (c2 asGoal: x) & (x === y)) fails.
			self assert: ((c1 asGoal: y) & (c2 asGoal: x) & (y === x)) fails ]   ]