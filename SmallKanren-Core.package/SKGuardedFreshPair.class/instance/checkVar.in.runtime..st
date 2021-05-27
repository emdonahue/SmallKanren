scheduling
checkVar: aVar in: aState runtime: aRuntime
	| names a d s |
	names := block argumentNames.
	a := SKVar tag: names first.
	d := SKVar tag: names second.
	s := (aState unify: aVar with: (a cons: d) runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
	^ (block value: a value: d) asGoal run: s	runtime: aRuntime.