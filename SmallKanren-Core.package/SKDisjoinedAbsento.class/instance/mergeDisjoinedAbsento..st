merging
mergeDisjoinedAbsento: anAbsento
	"Destructure self and append it to anAbsento."
	^ rest mergeDisjoinedAbsento: (self class absent: absent rest: anAbsento).