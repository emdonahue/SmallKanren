property
testDoubleConstraint
	[ :const1 :const2 | 
	self class
		constraint: const1
		constraint: const2
 ] asGoal run
		do: [ :cc | 
		(cc as: Array)	bind: [ :c1 :c2  | 
			self assert: ((c1 asGoalOn: x) & (c2 asGoalOn: x)) fails.
			self assert: (y === x & (c1 asGoalOn: y) & (c2 asGoalOn: x)) fails.
			self assert: (x === y & (c1 asGoalOn: y) & (c2 asGoalOn: x)) fails.
			self assert: ((c1 asGoalOn: y) & (c2 asGoalOn: x) & (x === y)) fails.
			self assert: ((c1 asGoalOn: y) & (c2 asGoalOn: x) & (y === x)) fails ]   ]