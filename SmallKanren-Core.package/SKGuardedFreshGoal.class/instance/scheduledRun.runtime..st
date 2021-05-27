scheduling
scheduledRun: aState runtime: aRuntime
	| val |
	val := aState walk: var.
	val isSKVar ifFalse: [ ^ self check: val in: aState runtime: aRuntime ].
	^ self checkVar: val in: aState runtime: aRuntime.