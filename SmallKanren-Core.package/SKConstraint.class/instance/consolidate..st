merging
consolidate: aMulti
	<type: #SKMultiConstraint returns: #SKConstraint>
	| c |
	c := aMulti consolidatedBy: self.
	c == aMulti ifTrue: [ ^ aMulti add: self ]. "If consolidation did not change the multi, then this constraint must not be captured later in the multi and must be appended here."
	^ c. "Otherwise, some subconstraint has absorbed the information in this constraint and we do not need to add it again."