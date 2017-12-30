tests
testUnifyFree
	"The variable returned on reification is undefined, and may change with implementation."
	self assert: ((SKState new unify: x with: y) reify: x) equals: y.
	self assert: ((SKState new unify: x with: y) reify: y) equals: y