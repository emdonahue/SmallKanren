running
run: aState runtime: aRuntime
	^ SKMPlusFair streams: 
		(clauses collect: [ :g | g run: aState runtime: aRuntime ] 
			thenSelect: [ :s | s isFailure not ]).