tests - pair
testMerge
	| merged |
	merged := (SKGuardedFreshPair block: [:a :b]) merge: (SKGuardedFreshPair block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car isSKVar.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshCar car: #car block: [:a :b]) merge: (SKGuardedFreshPair block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshPair block: [:a :b]) merge: (SKGuardedFreshCar car: #car block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshCar car: #car block: [:a :b]) merge: (SKGuardedFreshCar car: #car block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshPair block: [:a :b]) merge: (SKGuardedMatch fromPattern: #(_ | _) block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car isSKVar.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedMatch fromPattern: #(_ | _) block: [:a :b]) merge: (SKGuardedFreshPair block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car isSKVar.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedMatch fromPattern: #(_ | _) block: [:a :b]) merge: (SKGuardedFreshCar car: #car block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshCar car: #car block: [:a :b]) merge: (SKGuardedMatch fromPattern: #(_ | _) block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedFreshPair block: [:a :b]) merge: (SKGuardedMatch fromPattern: #(car | _) block: [:a :b]).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 2.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	merged := (SKGuardedMatch fromPattern: #(car | _) block: [:a :b]) merge: ((SKGuardedFreshPair block: [:a :b]) merge: (SKGuardedFreshPair block: [:a :b])).
	self assert: (merged isKindOf: SKGuardedFresh).
	self assert: merged clauses size equals: 3.
	self assert: merged pattern car equals: #car.
	self assert: merged pattern cdr isSKVar.
	
	self should: [ ((SKGuardedFreshPair block: [:a :b]) merge: (SKGuardedFreshPair block: [:a :b])) merge: (SKGuardedMatch fromPattern: #(car | _) block: [:a :b]).] raise: ShouldNotImplement.