tests
testInjectInto
	self assert: (empty inject: 1 into: [] ) equals: 1.
	self assert: (((empty add: 1) add: 2) inject: 3 into: [ :x :y | x +y  ]) equals: 6.
	self assert: ((((empty add: 1) add: 2) removeFirst add: 2) inject: 3 into: [ :x :y | x +y  ]) equals: 6
	