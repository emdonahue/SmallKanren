cdrIn
testCdrInVarTransfer
	"Test that suspended cdrs will suspend on the existing var."

	| g s |
	g := (x === (1 cons: y) ) & (x car: 1 cdro: [ :d | d === Cons empty ]).
	s := g run: SKSubstitution new.
	self assert: s isDelayed.
	self assert: s suspendedVars size equals: 1.
	self assert: s suspendedVars car cdr var equals: y