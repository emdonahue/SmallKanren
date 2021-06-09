merging
consolidate: aConstraint
	"Called with a multi (or the tail end of a multi which is not itself multi) to compress it down using self, which has already been simplified and is not multi."
	| c |
	c := aConstraint consolidatedBy: self.
	c == aConstraint ifTrue: [ ^ aConstraint add: self ]. "If consolidation did not change the multi, then this constraint must not be captured later in the multi and must be appended here."
	^ c. "Otherwise, some subconstraint has absorbed the information in this constraint and we do not need to add it again."