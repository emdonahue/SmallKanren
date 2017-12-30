debugging
integrityCheck
	state constraints keysAndValuesDo: [ :var :const | const ifDelayed: [ ^ true ] ].
	^ false