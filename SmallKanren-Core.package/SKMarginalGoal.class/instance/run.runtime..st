running
run: aState runtime: aRuntime
	^ ((distribution support collect: [ :o | {distribution sample: o. block value: o} ]) conde run: aState runtime: aRuntime) 
		marginalize: (aState copy jointDistribution: (SKJointDistribution new likelihood: Float negativeInfinity)).