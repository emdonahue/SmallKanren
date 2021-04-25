merging
consolidatedBy: aConstraint
	<todo> "Single and disjoined absentos should talk to see who adds to who, eg singles should append to multiples not vice versa."
	aConstraint isAbsento ifFalse: [ ^ super consolidatedBy: aConstraint ].
	 ^ aConstraint mergeAbsento: self.