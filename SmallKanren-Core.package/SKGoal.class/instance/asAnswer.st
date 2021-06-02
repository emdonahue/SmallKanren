running
asAnswer
	^ self asSpace ifEmpty: [ SKStream failure ] ifNotEmpty: [ :s | s first ].