tests
testInsert
	self assert: ((empty add: a) insert: a copy) size equals: 1.
	self assert: ((empty add: a) insert: a copy) first isConjoined.
	self assert: (((empty add: a) insert: b) insert: a) size equals: 2.
	self assert: (((empty add: a) insert: b) insert: a) removeFirst first isConjoined.
	self assert: ((((empty add: a) insert: b) removeFirst insert: b) insert: a) size equals: 2.
	self assert: ((((empty add: a) insert: b) removeFirst insert: b) insert: a) first isConjoined.
	self assert: ((((empty add: a) insert: b) removeFirst insert: b) insert: b) size equals: 2.
	self assert: ((((empty add: a) insert: b) removeFirst insert: b) insert: b) removeFirst first isConjoined.