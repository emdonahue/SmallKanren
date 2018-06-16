tests
testTableGround
	| r t |
	r := (self path: #a to: #b) runner.
	self assert: r runAll size equals: 1.
	t := r tables at: #path.
	self assert: t size equals: 3.
	self assert: (t at: #(a b) asConsTree) equals: #((a b)) asConsTree .
	self assert: (t at: #(b b) asConsTree) isEmpty.
	self assert: (t at: #(d b) asConsTree) isEmpty.