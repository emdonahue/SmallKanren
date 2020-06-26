occurscheck
occurs: x notIn: unwalkedY sub: sub depth: depth

	depth = 0 ifTrue: [^ SKGoal succeed ].
	^ [ :y | 
	(self walk: unwalkedY in: sub o: y)
		&
			((self not: x equals: y type: self nonLists)
				| [ :a :b | 
					y === (a cons: b) & (self occurs: x notIn: a sub: sub depth: depth - 1)
						& (self occurs: x notIn: b sub: sub depth: depth - 1) ]) ] asGoal