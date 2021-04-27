cdr-ground
testListDelayCdrFail
	"List delays fail immediately if car does not unify."

	| s |
	s := (1 cons car: 2 cdrIn: [ :d | Error signal ]) run: SKState new.
	self assert: s isFailure