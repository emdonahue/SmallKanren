running
checkVar: aVar in: aState runtime: aRuntime
	| d s |
	d := SKVar tag: block argumentNames first.
	s := (aState unify: aVar with: (car cons: d) runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
	^ (block value: d) asGoal run: s	runtime: aRuntime.