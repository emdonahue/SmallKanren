tests
testDisunification
	self assert: empty =/= empty equals: SKFail singleton.
	self assert: pair =/= empty equals: SKSucceed singleton.
	self assert: empty =/= pair equals: SKSucceed singleton.
	self assert: pair =/= pair equals: SKFail singleton.
	self assert: list =/= list equals: SKFail singleton.
	self assert: (pair =/= (Cons car: x cdr: 2)) asConstraint isDisequality.
	self assert: (pair =/= (Cons car: 1 cdr: x)) asConstraint isDisequality.
	self assert: (pair =/= (Cons car: x cdr: y)) asConstraint isDisequality.
	self assert: (list =/= (Cons with: x with: 2 with: 3)) asConstraint isDisequality.
	self assert: (list =/= (Cons with: 1 with: x with: 3)) asConstraint isDisequality.
	self assert: (list =/= (Cons with: 1 with: 2 with: x)) asConstraint isDisequality.
	self assert: (list =/= (Cons car: 1 cdr: x)) asConstraint isDisequality.
	self assert: empty =/= #symbol equals: SKSucceed singleton.
	self assert: #symbol =/= empty equals: SKSucceed singleton.
	self assert: pair =/= #symbol equals: SKSucceed singleton.
	self assert: #symbol =/= pair equals: SKSucceed singleton.
	self assert: (empty =/= x) asConstraint isDisequality.
	self assert: (x =/= empty) asConstraint isDisequality.
	self assert: (pair =/= x) asConstraint isDisequality.
	self assert: (x =/= pair) asConstraint isDisequality.