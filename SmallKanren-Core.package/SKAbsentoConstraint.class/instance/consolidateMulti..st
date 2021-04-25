merging
consolidateMulti: aMulti
	| s r |
	aMulti first isAbsento ifFalse: [ ^ super consolidateMulti: aMulti ].
	s := self mergeAbsento: aMulti first.
	r := aMulti rest consolidatedBy: self. "If this constraint still has information, consolidate the rest of the multi."
	^ SKMConstraint first: s rest: r. "If both have changed, the consolidating constraint has already been inserted later in the list so simply append the current constraint."