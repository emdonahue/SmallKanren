merging
consolidateMulti: aMulti
	| s r |
	s := self simplify: aMulti first. "Simplify the first constraint in the multi constraint."
	s = self class satisfied ifTrue: [ ^ aMulti rest consolidate: self ]. "If it is redundant, drop it."
	s = self class unsatisfiable ifTrue: [ ^ s ]. "If it is unsatisfiable, stop now."
	r := aMulti rest consolidatedBy: self. "If this constraint still has information, consolidate the rest of the multi."
	(s == aMulti first and: r == aMulti rest) ifTrue: [ ^ aMulti ]. "If nothing changed, return the original multi constraint."
	r == aMulti rest ifFalse: [ ^ SKMultiConstraint first: s rest: r ]. "If the rest of the multi had to update, append the current constraint no matter what."
	r == aMulti rest ifTrue: [ ^ SKMultiConstraint first: self rest: (SKMultiConstraint first: s rest: r) ]. "If only this link has changed, insert the consolidating constraint here."	
	^ SKMultiConstraint first: s rest: self. "If both have changed, the consolidating constraint has already been inserted later in the list so simply append the current constraint."