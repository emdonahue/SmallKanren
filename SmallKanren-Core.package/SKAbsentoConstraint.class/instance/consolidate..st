merging
consolidate: aConstraint
	aConstraint isAbsento ifFalse: [ ^ super consolidate: aConstraint ].
	 ^ self complicate: aConstraint.