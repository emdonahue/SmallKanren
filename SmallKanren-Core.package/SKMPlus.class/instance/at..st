debugging
at: anIndex
	^ anIndex <= left size
		ifTrue: [ left at: anIndex ]
		ifFalse: [ ^ right at: anIndex - left size ]	