constraining
constraints: aStore
	aStore ifEmpty: [ ^ state ].
	^ self copy setConstraints: aStore