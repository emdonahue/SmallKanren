converting
asAnswer
	^ (SKRuntime new stream: self) runStates ifEmpty: [ SKStream failure] ifNotEmpty: [ :s | s first ].