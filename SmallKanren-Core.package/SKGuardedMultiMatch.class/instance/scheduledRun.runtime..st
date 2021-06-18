running
scheduledRun: aState runtime: aRuntime
	| sch g sch2 |
	g := (self expandBlockWithVars: vars) ifFail: [ ^ SKStream failure ].
	sch := aState schedule collect: [ :f | f removeVar: var ].
	sch2 := sch reject: [ :f | f isFullyGround ].
	g := (sch select: [ :f | f isFullyGround ]) inject: g into: [ :gl :f | gl & (f getGoal) ].
	^ g run: (aState setSchedule: sch2) runtime: aRuntime.