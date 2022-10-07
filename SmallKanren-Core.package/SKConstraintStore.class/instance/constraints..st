constraining
constraints: aStore
	aStore ifEmpty: [ ^ substitution ].
	^ self copy setConstraints: aStore