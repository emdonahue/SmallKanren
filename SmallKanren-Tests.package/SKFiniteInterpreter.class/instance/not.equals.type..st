equality
not: a equals: b type: typeclass
	^ typeclass inject: SKGoal fail
		into: [ :g1 :t1 | 
			(typeclass reject: [ :t | t = t1 ]) inject: g1
				into: [ :g2 :t2 | g2 | (a === t1 & (b === t2)) ] ]