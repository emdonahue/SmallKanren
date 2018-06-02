tests
testIsEmpty
	self assert: empty isEmpty.
	self assert: (empty add: 1) isNotEmpty.
	self assert: (empty ifEmpty: 1 ifNotEmpty: nil) equals: 1.
	self assert: ((empty add: 1) ifEmpty: nil ifNotEmpty: [ :q | q add: 2 ]) size equals: 2