as yet unclassified
runNow: aCons
	<todo> "pull the specific needed unifications out of the disequality, possibly ignoring variables that are new in the pattern, as they should be replaced with the original vars/vals."
	| s |
	s := (SKSubstitution empty unify: pattern noWalk: aCons) ifFailure: [ ^ SKGoal fail ].
	^ (pattern === aCons) & (self freshGoal: s) asGoal.
