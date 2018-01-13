cdrIn
testCdrInVarTransfer
	"Test that delayed goals jump to other vars and delay them when unified with a var."

	| g s |
	g := (x car: 1 CdrIn: [ :d | d === Cons empty ]) & (x === (1 cons: y)).
	s := g run: SKState new.
	self assert: s isDelayed.
	self assert: s delayedVars size equals: 1.
	self assert: s delayedVars car equals: y