occurscheck
occurs: x in: unwalkedY sub: sub rest: r
	^ [ :y | 
	(self walk: unwalkedY in: sub o: y)
		&
			(x === y
				| [ :a :b | 
					y === (a cons: b)
						&
							(self
								occurs: x
								in: a
								sub: sub
								rest: (b cons: r)) ]
				| [ :a :b | 
					(self not: x equals: y type: self nonLists)
						&
							(
									(r === (a cons: b)
										&
											(self
												occurs: x
												in: a
												sub: sub
												rest: b))) ]) ]