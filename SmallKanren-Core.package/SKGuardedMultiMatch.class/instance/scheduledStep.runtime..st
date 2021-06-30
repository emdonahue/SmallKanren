as yet unclassified
scheduledStep: aState runtime: aRuntime
	| ground g unground sch frsh |
	"ABBench a: ["
	^ self scheduledRun: (aState setSchedule: aState schedule rest) runtime: aRuntime
	"] b: [
	frsh := self.
	sch := aState schedule remove: [ :f | (f isKindOf: SKGuardedMultiMatch) and: [ f var size ~= f vals size ] ] 
		ifPresent: [ :f | frsh := f ]
		ifAbsent: aState schedule rest.
	^ frsh scheduledRun: (aState setSchedule: sch) runtime: aRuntime.
	]."
	
	
	"g := (frsh expandBlockWithVars: vars) ifFail: [ ^ SKStream failure ].
	ground := sch collect: [ :f | f removeVar: var ].
	g := (ground select: [ :f | f isFullyGround ]) inject: g into: [ :gl :f | gl & (f getGoal) ifFail: [ ^ SKStream failure ] ].
	unground := ground reject: [ :f | f isFullyGround ].
	^ g run: (aState setSchedule: unground) runtime: aRuntime."