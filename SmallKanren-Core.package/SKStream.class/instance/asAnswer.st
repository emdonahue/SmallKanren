converting
asAnswer
	^ (SKRuntime new stream: self) asSpace ifEmpty: [ SKStream failure] ifNotEmpty: [ :s | s first ].