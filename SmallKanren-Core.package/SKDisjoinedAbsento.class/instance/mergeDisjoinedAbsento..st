merging
mergeDisjoinedAbsento: anAbsento
	"Destructure self and append it to anAbsento."
	^ next mergeDisjoinedAbsento: (self class absent: excluded rest: anAbsento).