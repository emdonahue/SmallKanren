enumerating
reverseDo: aBlock 
	rest reverseDo: aBlock.
	aBlock value: first.