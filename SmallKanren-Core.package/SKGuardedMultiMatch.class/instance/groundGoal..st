goal
groundGoal: someVals
	^ super groundGoal: someVals

"	| s p |
	p := self pattern.
	s := (SKSubstitution empty unify: p noWalk: aCons) ifFailure: [ ^ SKGoal fail ].
	^ (aCons === (s reify: aCons)) and: [ (self freshGoal: (s reify: p))]."