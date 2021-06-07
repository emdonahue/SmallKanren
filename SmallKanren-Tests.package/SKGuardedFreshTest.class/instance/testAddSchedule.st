tests - pattern
testAddSchedule
	self deny: SKState new hasSchedule.
	self assert: ((x match: #(_) o: [ :a | ]) run: s runtime: r) hasSchedule.
	self assert: (s addSchedule: (SKGuardedMatch new block: [ :a :d | a === 1 & (d === 2) ])) schedule size equals: 1.
	self assert: 
		((s add: x schedule: (SKGuardedMatch new var: x; block: [ :a :d | a === 1 & (d === 2) ]))
			add: y schedule: (SKGuardedMatch new var: y; block: [ :a :d | a === 1 & (d === 2) ])) schedule size equals: 2.
	self assert: 
		((x match: #(_) o: [ :a | ]) run: 
			((x match: #(_) o: [ :a | ]) run: 
				s runtime: r) runtime: r) 
		schedule size equals: 1.