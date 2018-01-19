cdr-ground
testEmptyListDelayCdrFail
	"Like non-lists, empty lists fail delay."

	| s |
	s := (Cons empty car: 1 cdrIn: [ :d | x === d ]) run: SKState new.
	self assert: s isEmptyStream