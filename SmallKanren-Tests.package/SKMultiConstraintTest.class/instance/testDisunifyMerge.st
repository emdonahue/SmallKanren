tests
testDisunifyMerge
	"Tests that a multiconstraint containing a disjoined disunification can still merge a new disunification."

	| constraint |
	constraint := (x =/= 1 run: (x =/= 3 run: (x isSymbolo run: (x =/= 2 run: SKState new)))) constraints at: x.
	self assert: constraint type equals: SKSymbolConstraint singleton.
	self assert: constraint disequality first equals: (x =/= 1) asConstraint.
	self assert: constraint disequality rest first equals: (x =/= 2) asConstraint.
	self assert: constraint disequality rest rest first equals: (x =/= 3) asConstraint