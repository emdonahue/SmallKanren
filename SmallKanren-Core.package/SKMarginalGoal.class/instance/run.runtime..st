running
run: aState runtime: aRuntime
	^ ((distribution support collect: [ :o | {observation === o. distribution sample: o. block value: o} ]) conde run: aState runtime: aRuntime) 
		marginalize: (aState copy jointDistribution: SKPseudoCounts new).