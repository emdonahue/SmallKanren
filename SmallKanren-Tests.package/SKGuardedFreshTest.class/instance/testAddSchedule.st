tests
testAddSchedule
	self deny: SKState new hasSchedule.
	self assert: ((x match2: #(_) o: [ :a | ]) run: s runtime: r) hasSchedule.
	self assert: (s addSchedule: (SKGuardedPatternedFresh new block: [ :a :d | a === 1 & (d === 2) ])) schedule size equals: 1.
	self assert: 
		((s add: x schedule: (SKGuardedPatternedFresh new var: x; block: [ :a :d | a === 1 & (d === 2) ]))
			add: y schedule: (SKGuardedPatternedFresh new var: y; block: [ :a :d | a === 1 & (d === 2) ])) schedule size equals: 2.
	self assert: 
		((x match2: #(_) o: [ :a | ]) run: 
			((x match2: #(_) o: [ :a | ]) run: 
				s runtime: r) runtime: r) 
		schedule size equals: 1.