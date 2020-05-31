interpreting
occurs: var in: pair 
 ^ self pairsWithOccurrences inject: SKGoal fail into: [ :g1 :p | 
	g1 | ((pair === p first) & (p second inject: SKGoal fail into: [ :g2 :v |
		
		g2 | (var === v)
		
		 ]))
	 ]