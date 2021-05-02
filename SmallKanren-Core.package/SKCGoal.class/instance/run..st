running
run: aState
	| val |
	val := aState walk: var.
	val isSKVar ifTrue: [ ^ constraint checkVar: val in: aState ].
	^ constraint check: val in: aState.