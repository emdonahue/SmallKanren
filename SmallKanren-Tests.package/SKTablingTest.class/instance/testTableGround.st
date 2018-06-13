tests
testTableGround
	| r t |
	r := (self path: #a to: #b) runner.
	r runAll.
	t := r tables at: #path.
	self assert: t size equals: 3.
	self assert: (t at: #(a b)) equals: #(#(a b)) asOrderedCollection.
	self assert: (t at: #(b b)) isEmpty.
	self assert: (t at: #(d b)) isEmpty.