tests - pair
testMerge
	| merged |
	merged := (SKGuardedFreshPair var: x block: [:a :b]) merge: (SKGuardedFreshPair var: x block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car isSKVar.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshCar var: x car: #car block: [:a :b]) merge: (SKGuardedFreshPair var: x block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshPair var: x block: [:a :b]) merge: (SKGuardedFreshCar var: x car: #car block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshCar var: x car: #car block: [:a :b]) merge: (SKGuardedFreshCar var: x car: #car block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshPair var: x block: [:a :b]) merge: (SKGuardedPatternedFresh fromPattern: #(_ | _) var: x block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car isSKVar.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedPatternedFresh fromPattern: #(_ | _) var: x block: [:a :b]) merge: (SKGuardedFreshPair var: x block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car isSKVar.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedPatternedFresh fromPattern: #(_ | _) var: x block: [:a :b]) merge: (SKGuardedFreshCar var: x car: #car block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshCar var: x car: #car block: [:a :b]) merge: (SKGuardedPatternedFresh fromPattern: #(_ | _) var: x block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshPair var: x block: [:a :b]) merge: (SKGuardedPatternedFresh fromPattern: #(car | _) var: x block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedPatternedFresh fromPattern: #(car | _) var: x block: [:a :b]) merge: ((SKGuardedFreshPair var: x block: [:a :b]) merge: (SKGuardedFreshPair var: x block: [:a :b])).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 3.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	self should: [ ((SKGuardedFreshPair var: x block: [:a :b]) merge: (SKGuardedFreshPair var: x block: [:a :b])) merge: (SKGuardedPatternedFresh fromPattern: #(car | _) var: x block: [:a :b]).] raise: ShouldNotImplement.