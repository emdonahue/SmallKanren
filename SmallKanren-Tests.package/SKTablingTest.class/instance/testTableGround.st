tests
testTableGround
	| r |
	r := (self path: #a to: #b) runner steps: 10.
	self assert: (r tables at: #path) size equals: 3.