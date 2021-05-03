tests
testEmptyConstraint
	"Symbolo should be checked by previous symbolo."

	| s |
	s := y isSymbolo run: (x isSymbolo run: SKState new).
	self assert: (s constraints at: y) equals: SKSymbolo singleton.
	self assert: (s constraints at: x) equals: SKSymbolo singleton