merging
consolidatedBy: aConstraint
	"If aConstraint is an absento, merge these constraints directly together into a disjoined absento. Otherwise merge using the standard multiconstraint system."
	aConstraint isAbsento ifFalse: [ ^ super consolidatedBy: aConstraint ].
	^ aConstraint mergeAbsento: self.