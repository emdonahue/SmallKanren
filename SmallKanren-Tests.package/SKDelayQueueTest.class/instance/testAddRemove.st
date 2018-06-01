tests
testAddRemove
	self assert: empty isEmpty.
	self assert: (empty add: 1) first equals: 1.
	self assert: (empty add: 1) removeFirst isEmpty.
	self assert: ((empty add: 1) add: 2) first equals: 2.
	self assert: ((empty add: 1) add: 2) removeFirst first equals: 1.
	self assert: (((empty add: 1) add: 2) removeFirst add: 3) first equals: 1.
	self assert: (((empty add: 1) add: 2) removeFirst add: 3) removeFirst first equals: 3