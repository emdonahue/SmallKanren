cdr-unified
testListUnifiedCdrSucceed
	"List delays succeed immediately if car unifies."

	| s |
	s := x === (1 cons: 2) & (x car: 1 cdrIn: [ :d | z === d ]) run: SKState new.
	self assert: s isState.
	self assert: s => z equals: 2