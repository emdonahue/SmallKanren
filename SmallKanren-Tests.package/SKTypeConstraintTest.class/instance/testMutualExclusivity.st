tests
testMutualExclusivity
	"Applying different type constraints should fail."

	self assert: (x isNumbero run: (x isSymbolo run: SKState new)) isNone