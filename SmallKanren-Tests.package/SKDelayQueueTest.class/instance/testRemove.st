tests
testRemove
	self assert: (empty remove: a) equals: empty.
	self assert: ((empty add: a) remove: a) equals: empty.
	self assert: (((empty add: a) add: b) remove: b) first equals: a.
	self assert: (((empty add: a) add: b) remove: a) first equals: b.
	self assert: ((((empty add: a) add: b) remove: b) remove: a) equals: empty.
	self assert: ((((empty add: a) add: b) remove: a) remove: b) equals: empty.
	self assert: (((empty add: a) add: b) removeFirst remove: a) equals: empty.
	self assert: (((((empty add: a) add: b) removeFirst add:b ) remove: a) isKindOf: SKForwardDelayQueue ).
	