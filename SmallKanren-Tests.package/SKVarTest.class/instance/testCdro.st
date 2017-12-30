tests
testCdro
	self assert: [ Cons empty  cdro: 2 ] asGoal runner runAll isEmpty.
	self assert: [ 42  cdro: 2 ] asGoal runner runAll isEmpty.
	self assert: [ (1 cons: 2)  cdro: y ] asGoal runner runAll first => (y) equals: (2).
	self
		assert:
			[ :v | 
			{(v  cdro: y).
			v isEmptyo} ] asGoal runner runAll isEmpty.
	self
		assert:
			[ :v | 
			{(v cdro: y).
			(v === (1 cons: 2))} ] asGoal runner runAll first => ( y)
		equals: (2)