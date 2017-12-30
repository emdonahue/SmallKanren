tests
testDisunification
	self assert: empty =/= empty equals: SKFailure singleton.
	self assert: pair =/= empty equals: SKSuccess singleton.
	self assert: empty =/= pair equals: SKSuccess singleton.
	self assert: pair =/= pair equals: SKFailure singleton.
	self assert: list =/= list equals: SKFailure singleton.
	self assert: (pair =/= (Cons car: x cdr: 2)) isDisequality.
	self assert: (pair =/= (Cons car: 1 cdr: x)) isDisequality.
	self assert: (pair =/= (Cons car: x cdr: y)) isDisequality.
	self assert: (list =/= (Cons with: x with: 2 with: 3)) isDisequality.
	self assert: (list =/= (Cons with: 1 with: x with: 3)) isDisequality.
	self assert: (list =/= (Cons with: 1 with: 2 with: x)) isDisequality.
	self assert: (list =/= (Cons car: 1 cdr: x)) isDisequality.
	self assert: empty =/= #symbol equals: SKSuccess singleton.
	self assert: #symbol =/= empty equals: SKSuccess singleton.
	self assert: pair =/= #symbol equals: SKSuccess singleton.
	self assert: #symbol =/= pair equals: SKSuccess singleton.
	self assert: (empty =/= x) isDisequality.
	self assert: (x =/= empty) isDisequality.
	self assert: (pair =/= x) isDisequality.
	self assert: (x =/= pair) isDisequality