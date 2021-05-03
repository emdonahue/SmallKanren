tests
testEmptyStore
	"Symbolo should be automatically set by empty constraint store."

	self assert: ((x isSymbolo run: SKState new) constraints at: x) equals: SKSymbolo singleton