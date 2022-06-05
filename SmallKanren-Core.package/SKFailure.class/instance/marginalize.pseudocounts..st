probability
marginalize: aState pseudocounts: theCounts
	aState pseudoCounts ifNotEmpty: [ ^ aState addPseudocounts: theCounts ].