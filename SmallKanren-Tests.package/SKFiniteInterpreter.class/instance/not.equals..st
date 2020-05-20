parsing
not: a equals: b
 ^ self all inject: SKGoal fail into: [ :g1 :t1 | 
	 (self allBut: t1) inject: g1 into: [ :g2 :t2 |
		g2 | (a === t1 & (b === t2))
		]
	 ]