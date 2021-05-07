cdr-ground
testListDelayCdrSucceed
	"List delays succeed immediately if car unifies."

	| s |
	s := ((1 cons: 2) car: 1 cdrIn: [ :d | x === d ]) run: SKState new runtime: SKRuntime new.
	self assert: s isState.
	self assert: s => x equals: 2