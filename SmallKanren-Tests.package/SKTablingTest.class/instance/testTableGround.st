tests-pathing
testTableGround
	| r t |
	r := (self path: #a to: #b) runtime.
	self assert: r runList size equals: 1.
	t := r runTablesOnly at: #path.
	self assert: t size equals: 3.
	self assert: ((t at: #(a b) asCons) collect: #argv) equals: ((#a cons: #b cons) cons).
	self assert: ((t at: #(b b) asCons) collect: #argv) equals: ((#b cons: #b cons) cons).
	self assert: (t at: #(d b) asCons) isEmpty.