tests
testSelect
	self assert: (empty select: [ :x | true ]) equals: empty.
	self assert: ((empty add: 1) select: [ :x | x = 2 ]) equals: empty.
	self assert: ((empty add: 1) select: [ :x | x = 1 ]) first equals: 1.
	self assert: ((((empty add: 1) add: 2) removeFirst add: 2) select: [ :x | x = 1 ]) size equals: 1.
	self assert: (((((empty add: 1) add: 2) removeFirst add: 2) select: [ :x | x = 1 ]) isKindOf: SKReverseDelayedQueue).
	self assert: ((((empty add: 1) add: 2) removeFirst add: 2) select: [ :x | x = 2 ]) size equals: 1.
	self assert: (((((empty add: 1) add: 2) removeFirst add: 2) select: [ :x | x = 2 ]) isKindOf: SKForwardDelayQueue ).