laziness
eager: aVar val: aVal in: aState runtime: aRuntime
	| g |
	g := block value: aVal car value: aVal cdr.
	g isFailure ifTrue: [ ^ SKStream failure ].
	^ g run: (aState extend: aVar with: aVal) runtime: aRuntime.