debugging
= aDisjoinedExclusion
	^ super = aDisjoinedExclusion
		and: [ rest = aDisjoinedExclusion rest ]