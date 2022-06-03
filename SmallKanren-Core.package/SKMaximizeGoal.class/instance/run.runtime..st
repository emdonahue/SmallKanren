running
run: aState runtime: aRuntime
	"For each element of the distribution's support, run the block with that observed value and sum all returned streams."
	| walked |
	walked := aState walk: observation.
	^ ((distribution support collect: 
			[ :o | 
				{observation 
					ifNil: true "If no variable will bind the maximized arg, just ignore and contribute likelihood."
					ifNotNil: [ observation === o ]. "Unlike marginalization, maximization can return an actual answer."
				distribution sample: o. "Adjust the likelihood of the branch."
				block value: o} ]) 
		conde run: aState runtime: aRuntime) 
			maximize: nil.