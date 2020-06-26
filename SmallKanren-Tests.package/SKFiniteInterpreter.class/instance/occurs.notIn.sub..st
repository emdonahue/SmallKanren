occurscheck
occurs: x notIn: unwalkedY sub: sub
	^ [ :y | 
	(self walk: unwalkedY in: sub o: y)
		&
			((self not: x equals: y type: self nonLists)
				| [ :a :b | 
					y === (a cons: b) & (self occurs: x notIn: a sub: sub)
						& (self occurs: x notIn: b sub: sub) ]) ] asGoal