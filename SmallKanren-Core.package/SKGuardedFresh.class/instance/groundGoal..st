goal
groundGoal: aCons
	"Extract a new pattern from the combination of the current pattern and the ground term and use that to construct and run a goal. In an empty substitution, unify the pattern and the ground term. Reify the pattern to get the values with which to build the goal and reify the ground term to get any extra information to unify in the main state. Because the reified ground term is unifying with its unreified self, any information already in the state will be discarded because variables will be their own unifications and will not require walking. All of this requires that pattern variables point to ground term variables and not the reverse, since both goal construction and excess data unification require variables from the ground term that may have bindings in the outer state."
	| s |
	s := (SKSubstitution empty unify: self pattern noWalk: aCons) ifFailure: [ ^ SKGoal fail ].
	^ (aCons === (s reify: aCons)) & (self freshGoal: (s reify: self pattern)).
