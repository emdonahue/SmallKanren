running
run: aState runtime: aRuntime
	"Walk all of the vars to establish groundedness. "
	| numFree walked |
	numFree := 0.
	walked := var collect: [ :v | 
		| w | w := aState walk: v. w isSKVar ifTrue: [ numFree := numFree + 1 ]. w ].
	numFree isZero ifTrue: [ ^ self fire: walked in: aState runtime: aRuntime ].
	self notYetImplemented.
	"v isSKVar ifFalse: [ ^ self fire: v in: aState runtime: aRuntime ].
	^ aState add: v schedule: (self reassignVar: v)."