tests
testTableGround
	| r t |
	r := (self path: #a to: #b) runner.
	self assert: r runAll size equals: 1.
	
	t := r tables at: #path.
	self assert: t size equals: 3.
	self assert: (t at: #(a b)) equals: #(#(a b)) asOrderedCollection.
	self assert: (t at: #(b b)) isEmpty.
	self assert: (t at: #(d b)) isEmpty.