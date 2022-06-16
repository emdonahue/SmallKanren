probability
marginalize: aState pseudocounts: theCounts
	aState ifNotNil: [ ^ aState copy pseudoCounts: theCounts ].