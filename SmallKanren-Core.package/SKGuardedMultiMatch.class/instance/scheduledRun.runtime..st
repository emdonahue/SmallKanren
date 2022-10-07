running
scheduledRun: aState runtime: aRuntime
	| ground g unground |
	g := (self expandBlockWithVars: internals) ifFail: [ ^ SKStream failure ].
	ground := aState schedule collect: [ :f | f removeVar: externals ].
	g := (ground select: [ :f | f isFullyGround ]) inject: g into: [ :gl :f | gl & (f getGoal) ifFail: [ ^ SKStream failure ] ].
	unground := ground reject: [ :f | f isFullyGround ].
	^ g run: (aState schedule: unground) runtime: aRuntime.