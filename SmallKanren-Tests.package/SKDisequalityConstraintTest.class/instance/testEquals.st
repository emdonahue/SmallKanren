equality
testEquals
	self assert: (x =/= 1) asConstraint equals: (x =/= 1) asConstraint.
	self assert: (x =/= 1) asConstraint hash equals: (x =/= 1) asConstraint hash.
	self assert: ((x =/= 1) asConstraint and: y disequality: 2) equals: ((x =/= 1) asConstraint and: y disequality: 2).
	self assert: ((x =/= 1) asConstraint and: y disequality: 2) hash equals: ((x =/= 1) asConstraint and: y disequality: 2) hash.
	self assert: ((x =/= 1) asConstraint disequality: (y =/= 2) asConstraint) equals: ((x =/= 1) asConstraint disequality: (y =/= 2) asConstraint).
	self assert: ((x =/= 1) asConstraint disequality: (y =/= 2) asConstraint) hash equals: ((x =/= 1) asConstraint disequality: (y =/= 2) asConstraint) hash.