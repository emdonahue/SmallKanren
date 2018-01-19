cdr-ground
testNonListDelayCdrFail
	"Non-lists fail delay."

	| s |
	s := (Object new car: 1 cdrIn: [ :d | x === d ]) run: SKState new.
	self assert: s isEmptyStream