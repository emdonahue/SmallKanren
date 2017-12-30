tests
testIsNotEmptyo
	self assert: Cons empty isNotEmptyo runner runAll size equals: 0.
	self assert: 42 cons isNotEmptyo runner runAll size equals: 1.
	self assert: { x === 42 cons. x isNotEmptyo } asGoal runner runAll size equals: 1.
	self assert: { x isNotEmptyo. x === 42 cons.  } asGoal runner runAll size equals: 1.
	self assert: { x === Cons empty. x isNotEmptyo } asGoal runner runAll size equals: 0.
	self assert: { x isNotEmptyo. x === Cons empty.  } asGoal runner runAll size equals: 0.
	