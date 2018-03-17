running
reify: aVar
	^ self run collect: [ :s | s reify: aVar ]