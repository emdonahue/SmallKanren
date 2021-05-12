running
run
	^ self asSpace collect: [ :s | s  reify: queryVars ].