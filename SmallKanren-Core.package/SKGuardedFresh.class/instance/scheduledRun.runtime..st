scheduling
scheduledRun: aState runtime: aRuntime
	| s |
	"Unify pattern with val to extract the current values of this constraint's free vars."
	s := (aState unify: self pattern with: var runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
"	st := (aState unify: var with: (s reify: var)) ifFailure: [ ^ SKStream failure ]."
	^ self freshGoal
		"Because a val may pick up new ground values from pattern, unify them back into the state. Since var is reified (safe because substitutions have no constraints so it's pure unification), if it picked up no new information, all its free vars will match each other identically and so not walk the state's substitution."
		run: s
		runtime: aRuntime.