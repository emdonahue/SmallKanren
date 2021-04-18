debugging
= aDisjoinedExclusion
	^ (super = aDisjoinedExclusion ) and: [ next = aDisjoinedExclusion next ]
	