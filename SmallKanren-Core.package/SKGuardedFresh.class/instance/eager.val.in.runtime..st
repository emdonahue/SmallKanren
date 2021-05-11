laziness
eager: aVar val: aVal in: aState runtime: aRuntime
	| s |
	"Unify pattern with val to extract the current values of this constraint's free vars."
	s := (SKSubstitution empty unify: pattern with: aVal) ifFailure: [ ^ SKStream failure ].
"	st := (aState unify: aVal with: (s reify: aVal)) ifFailure: [ ^ SKStream failure ]."
	^ (self freshGoal: s) 
		"Because a val may pick up new ground values from pattern, unify them back into the state. Since aVal is reified (safe because substitutions have no constraints so it's pure unification), if it picked up no new information, all its free vars will match each other identically and so not walk the state's substitution."
		run: ((aState unify: aVal with: (s reify: aVal)) ifFailure: [ ^ SKStream failure ])
		runtime: aRuntime.