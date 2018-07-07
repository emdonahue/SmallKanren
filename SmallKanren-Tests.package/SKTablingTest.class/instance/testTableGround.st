classic tabling
testTableGround
	| r t |
	r := (self path: #a to: #b) runner.
	self assert: r runAll size equals: 1.
	t := r tables at: #path.
	self assert: t size equals: 3.
	self assert: (t at: #(a b) asConsTree) equals: (OrderedCollection with: (#a cons: #b cons)).
	self assert: (t at: #(b b) asConsTree) equals: (OrderedCollection with: (#b cons: #b cons)).
	self assert: (t at: #(d b) asConsTree) isEmpty.