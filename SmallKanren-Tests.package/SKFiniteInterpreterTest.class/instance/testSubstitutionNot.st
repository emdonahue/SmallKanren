interpreter
testSubstitutionNot
	self assert: (interpreter substitution: interpreter env first not: interpreter env first copy) fails.
	self assert: (interpreter substitution: interpreter env first not: (self x: 1) first) run equals: Cons empty cons.
	self assert: (interpreter substitution: interpreter env first not: (self x: #x y: 1) first) run equals: Cons empty cons.