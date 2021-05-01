cdr-unified
testNonListUnifyCdrFail
	"Non-lists fail delay."

	| s |
	s := ((x === Object new) & (x car: 1 cdrIn: [ :d | x === d ])) runtime.
	self assert: s stream isFailure