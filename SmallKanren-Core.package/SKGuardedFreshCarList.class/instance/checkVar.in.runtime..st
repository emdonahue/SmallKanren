running
checkVar: aVar in: aState runtime: aRuntime
	| d s |
	d := (block argumentNames collect: [ :n | SKVar tag: n ]).
	s := (aState unify: aVar with: (car cons: d asCons) runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
	^ (block valueWithArguments: d) asGoal run: s runtime: aRuntime.