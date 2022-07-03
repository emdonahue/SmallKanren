classic tabling
testTableGround
	| r t |
	r := (self path: #a to: #b) runtime.
	self assert: r run size equals: 1.
	t := r tables at: #path.
	self assert: t size equals: 3.
	self assert: ((t at: #(a b) asConsR) collect: #argv) equals: (OrderedCollection with: (#a cons: #b cons)).
	self assert: ((t at: #(b b) asConsR) collect: #argv) equals: (OrderedCollection with: (#b cons: #b cons)).
	self assert: (t at: #(d b) asConsR) isEmpty.