tests
testAppendoTo
	self assert: (Cons empty appendo: Cons empty to: Cons empty) runner runAll size equals: 1.
	self assert: (1 cons appendo: Cons empty to: Cons empty) runner runAll isEmpty.
	self assert: (Cons empty appendo: 1 cons to: Cons empty) runner runAll isEmpty.
	self assert: (Cons empty appendo: Cons empty to: 1 cons) runner runAll isEmpty.
	self assert: (1 cons appendo: 1 cons to: Cons empty) runner runAll size equals: 1.
	self assert: (1 cons appendo: Cons empty to: 1 cons) runner runAll size equals: 1.
	self assert: ((1 cons: 2 cons) appendo: 1 cons to: 2 cons) runner runAll size equals: 1.
	self assert: ((1 cons appendo: 1 cons to: x) asGoal runner runAll first reify: x)  equals: Cons empty.
	self assert: (1 cons appendo: 1 cons to: x) asGoal runner runAll size equals: 1.
	self assert: ((1 cons appendo: x to: 1 cons) asGoal runner runAll first reify: x)  equals: Cons empty.
	self assert: (1 cons appendo: x to: 1 cons) asGoal runner runAll size equals: 1.
	self assert: ((1 cons appendo: 1 cons to: x) asGoal runner runAll first reify: x)  equals: Cons empty.
	self assert: (1 cons appendo: 1 cons to: x) asGoal runner runAll size equals: 1.
	self assert: ((Cons empty appendo: x to: x) asGoal runner runAll first reify: x)  equals: Cons empty.
	self assert: (Cons empty appendo: x to: x) asGoal runner runAll size equals: 1.
	self assert: ((1 cons appendo: x to: y) asGoal runner runAll first reify: x)  equals: Cons empty.
	self assert: ((1 cons appendo: x to: y) asGoal runner runAll first reify: y)  equals: 1 cons.
	self assert: ((1 cons appendo: x to: y) asGoal runner runAll second reify: x)  equals: 1 cons.
	self assert: ((1 cons appendo: x to: y) asGoal runner runAll second reify: y)  equals: Cons empty