debugging
asAnswer
	self isIncomplete ifTrue: [
	^ (SKRuntime new stream: self) runStates ifEmpty: [ SKStream failure] ifNotEmpty: [ :s | s first ]]