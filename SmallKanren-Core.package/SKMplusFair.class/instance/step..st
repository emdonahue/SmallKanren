streaming
step: aRunner
	^ streams rest 
		ifEmpty: [ streams first step: aRunner ]
		ifNotEmpty: [ :s | (streams first step: aRunner) fairPlus: (self class new streams: s) ].