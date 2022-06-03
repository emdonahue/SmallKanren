running
asAnswer
	^ self runStates ifEmpty: [ SKStream failure ] ifNotEmpty: [ :s | s first ].