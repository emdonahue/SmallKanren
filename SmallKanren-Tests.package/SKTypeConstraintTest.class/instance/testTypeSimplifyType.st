tests
testTypeSimplifyType
	self assert: (symbolo simplify: symbolo) equals: satisfied.
	self assert: (symbolo simplify: numbero) equals: unsatisfiable.
	self assert: (numbero simplify: symbolo) equals: unsatisfiable.
	self assert: (numbero simplify: numbero) equals: satisfied.
	