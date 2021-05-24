tests
testAddSchedule
	self deny: SKState new hasSchedule.
	self assert: ((x match2: #(_) o: [ :a | ]) run: s runtime: r) hasSchedule.
	self assert: (s addSchedule: (SKGuardedFreshSingle new block: [ :a :d | a === 1 & (d === 2) ])) schedule size equals: 1.
	self assert: 
		((s add: x schedule: (SKGuardedFreshSingle new var: x; block: [ :a :d | a === 1 & (d === 2) ]))
			add: y schedule: (SKGuardedFreshSingle new var: y; block: [ :a :d | a === 1 & (d === 2) ])) schedule size equals: 2.
	self assert: 
		((x match2: #(_) o: [ :a | ]) run: 
			((x match2: #(_) o: [ :a | ]) run: 
				s runtime: r) runtime: r) 
		schedule size equals: 1.