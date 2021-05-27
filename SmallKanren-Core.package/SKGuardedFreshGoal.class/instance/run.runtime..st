running
run: aState runtime: aRuntime
	| val |
	val := aState walk: var.
	val isSKVar ifFalse: [ ^ self check: val in: aState runtime: aRuntime ].
	^ aState add: val schedule: self.