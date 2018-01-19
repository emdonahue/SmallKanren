cdr-unified
testListUnifiedCdrFail
	"List delays fail immediately if car does not unify."

	| s |
	s := ( x === 1 cons) & (x car: 2 cdrIn: [ :d | Error signal ]) run: SKState new.
	self assert: s isEmptyStream