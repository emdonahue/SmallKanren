probability
marginalize: aState pseudocounts: theCounts
	aState ifNil: [ ^ right marginalize: left pseudocounts: left pseudocounts ].
	^ right marginalize: (left likelihood < aState likelihood ifTrue: aState ifFalse: left)
		pseudocounts: theCounts + 	left pseudocounts.