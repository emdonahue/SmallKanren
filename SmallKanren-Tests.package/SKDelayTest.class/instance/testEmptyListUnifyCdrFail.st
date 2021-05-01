cdr-unified
testEmptyListUnifyCdrFail
	"Like non-lists, empty lists fail delay."

	| s |
	s := ((x isEmptyo) & (x car: 1 cdrIn: [ :d | x === d ])) runtime stream.
	self assert: s isFailure