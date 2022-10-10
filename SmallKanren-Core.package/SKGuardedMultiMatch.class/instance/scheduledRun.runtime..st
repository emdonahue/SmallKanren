running
scheduledRun: aState runtime: aRuntime
	"Run when this is forced off the schedule with yet unbound external vars."
	| schedule g |
	g := (self expandBlockWithVars: internals) ifFail: [ ^ SKStream failure ].
	"Commit to the unifications required to run this goal and remove dependencies on those vars from all other goals."
	schedule := aState schedule collect: [ :f | f removeExternals: externals ].
	"Conjoin goals that have no more dependencies after those commitments."
	g := (schedule reject: #hasExternalDependencies) inject: g into: [ :gl :f | gl & f expandFresh ifFail: [ ^ SKStream failure ] ].
	"Set the remaining schedule to guards that still have dependencies and run the goal."
	^ g run: (aState schedule: (schedule select: #hasExternalDependencies)) runtime: aRuntime.