probability
marginalize: aState pseudocounts: theCounts
	"When the marginalized stream f inally fails, return the most likely substitution with the sum of the pseudocounts"
	aState ifNotNil: [ ^ aState pseudocounts: theCounts ].