running
run: aState runtime: aRuntime
	"For each element of the distribution's support, run the block with that observed value and sum all returned streams."
	| walked |
	walked := aState walk: observation.
	^ ((distribution support collect: 
			[ :o | {walked = o | walked isSKVar. "If observation is already bound, fail all but one branch."
				distribution sample: o. "Adjust the likelihood of the branch."
				block value: o} ]) 
		conde run: aState runtime: aRuntime) 
			condition: (aState copy pseudoCounts: SKPseudoCounts new).