tests
testIdempotence
	"Reapplying the same type constraint should do nothing."

	self assert: ((x isSymbolo run: (x isSymbolo run: SKSubstitution new)) constraints at: x) equals: SKSymbolo singleton