tests
testCaroCdro
	self assert: [ Cons empty caro: 1 cdro: 2 ] asGoal runner runAll isEmpty.
	self assert: [ 42 caro: 1 cdro: 2 ] asGoal runner runAll isEmpty.
	
	self assert: [ (1 cons: 2) caro: x cdro: y ] asGoal runner runAll first => (x cons: y) equals: (1 cons: 2).
	self
		assert:
			[ :v | 
			{(v caro: x cdro: y).
			v isEmptyo} ] asGoal runner runAll isEmpty.
	self
		assert:
			[ :v | 
			{(v caro: x cdro: y).
			(v === (1 cons: 2))} ] asGoal runner runAll first => (x cons: y)
		equals: (1 cons: 2)