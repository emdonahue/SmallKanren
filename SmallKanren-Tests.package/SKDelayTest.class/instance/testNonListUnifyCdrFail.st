cdr-unified
testNonListUnifyCdrFail
	"Non-lists fail delay."

	| s |
	s := ((x === Object new) & (x car: 1 cdrIn: [ :d | x === d ])) runner.
	self assert: s stream isEmptyStream