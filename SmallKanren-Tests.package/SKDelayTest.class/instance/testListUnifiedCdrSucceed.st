cdr-unified
testListUnifiedCdrSucceed
	"List delays succeed immediately if car unifies."

	| s |
	s := (x === (1 cons: 2) & (x car: 1 cdrIn: [ :d | z === d ])) runner.
	self assert: s stream isState.
	self assert: s stream => z equals: 2