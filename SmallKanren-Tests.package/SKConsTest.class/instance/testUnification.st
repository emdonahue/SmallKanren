tests
testUnification
	self assert: empty === empty equals: SKSuccess singleton.
	self assert: pair === empty equals: SKFailure singleton.
	self assert: empty === pair equals: SKFailure singleton.
	self assert: pair === pair equals: SKSuccess singleton.
	self assert: list === list equals: SKSuccess singleton.
	self assert: (pair === (Cons car: x cdr: 2)) isUnification.
	self assert: (pair === (Cons car: 1 cdr: x)) isUnification.
	self assert: (pair === (Cons car: x cdr: y)) isConjunction.
	self assert: (list === (Cons with: x with: 2 with: 3)) isUnification.
	self assert: (list === (Cons with: 1 with: x with: 3)) isUnification.
	self assert: (list === (Cons with: 1 with: 2 with: x)) isUnification.
	self assert: (list === (Cons car: 1 cdr: x)) isUnification.
	self assert: empty === #symbol equals: SKFailure singleton.
	self assert: #symbol === empty equals: SKFailure singleton.
	self assert: pair === #symbol equals: SKFailure singleton.
	self assert: #symbol === pair equals: SKFailure singleton.
	self assert: (empty === x) isUnification.
	self assert: (x === empty ) isUnification.
	self assert: (pair === x ) isUnification.
	self assert:( x === pair ) isUnification.
	