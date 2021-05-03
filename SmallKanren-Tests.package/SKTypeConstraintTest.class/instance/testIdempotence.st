tests
testIdempotence
	"Reapplying the same type constraint should do nothing."

	self assert: ((x isSymbolo run: (x isSymbolo run: SKState new)) constraints at: x) equals: SKSymbolo singleton