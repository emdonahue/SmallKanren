cdr-unified
testEmptyListUnifyCdrFail
	"Like non-lists, empty lists fail delay."

	| s |
	s := ((x isEmptyo) & (x car: 1 cdrIn: [ :d | x === d ])) runner stream.
	self assert: s isEmptyStream