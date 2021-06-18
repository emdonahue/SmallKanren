running
run: aState runtime: aRuntime
	"Walk all of the vars to establish groundedness. "
	| s walked vs |
	s := (aState unify: var asConsTree with: pattern runtime: aRuntime) ifFailure: [ ^ SKStream failure ].
	walked := var collect: [ :v | aState walkVar: v ].
	vs := walked select: [ :v | (aState walk: v) isSKVar or: [ 
			aState schedule anySatisfy: [ :f | f includesVar2: v ] ] ].
	vs ifEmpty: [ ^ (self expandBlockWithVars: vars) run: s runtime: aRuntime ].
	^ s addSchedule: (self reassignVar: vs).