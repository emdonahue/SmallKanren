streaming
step: aRunner
	^ streams rest 
		ifEmpty: [ streams first mplusStep: aRunner ]
		ifNotEmpty: [ :s | self class streams: s mplus: (streams first mplusStep: aRunner) ].