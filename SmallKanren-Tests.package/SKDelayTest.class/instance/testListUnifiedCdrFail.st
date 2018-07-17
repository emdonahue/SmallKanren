early failure
testListUnifiedCdrFail
	"List delays fail immediately if car does not unify."

	| s |
	self skip.
	s := (x === 1 cons & (x car: 2 cdrIn: [ :d | Error signal ])) runner stream.
	self assert: s isEmptyStream.