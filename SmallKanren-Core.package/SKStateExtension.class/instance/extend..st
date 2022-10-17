scheduling
extend: aState
	state == aState ifFalse: [ ^ self copy state: aState ].