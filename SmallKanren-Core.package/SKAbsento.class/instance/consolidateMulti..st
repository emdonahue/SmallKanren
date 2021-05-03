merging
consolidateMulti: aMulti
	<todo> "Can this be further factored so we don't have to deal with multi logic here."
	"If the multi is not headed by an absento, treat it normally."
	aMulti first isAbsento ifFalse: [ ^ super consolidateMulti: aMulti ].
	"Otherwise, merge with the heading absento and append to the consolidated rest."
	^ (aMulti rest consolidatedBy: self) add: (self mergeAbsento: aMulti first). 