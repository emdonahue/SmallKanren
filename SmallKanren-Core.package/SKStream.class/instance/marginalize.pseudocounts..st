probability
marginalize: aState pseudocounts: theCounts
	^ SKMarginalizeStream new state: aState; stream: self; pseudocounts: theCounts.