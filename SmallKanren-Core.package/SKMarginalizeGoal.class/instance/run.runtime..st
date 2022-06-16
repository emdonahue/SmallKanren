running
run: aState runtime: aRuntime
	"For each element of the distribution's support, run the block with that observed value and sum all returned streams."
	| walked |
	walked := observation ifNotNil: [ aState walk: observation ].
	^ ((distribution support collect: 
			[ :o | 
				{walked ifNil: true
					ifNotNil: [ walked === o ]. "If observation is already bound, fail all but one branch."
				distribution sample: o. "Adjust the likelihood of the branch."
				block value: o} ]) 
		conde run: aState runtime: aRuntime) 
			marginalize: nil pseudocounts: nil.