cdrIn
testCdrInConjoin
	"Test that two suspended cdrs will suspend on the existing var."

	| g s |
	g := (x car: 1 cdrIn: [ :d | d === Cons empty ]) & (x car: 1 cdrIn: [ :d | d === Cons empty ]).
	s := g run: SKState new.
	self assert: s isDelayed.
	self assert: s suspendedVars size equals: 1.
	self assert: (s suspendedVars car cdr isKindOf: SKDelayedVarConjoin )