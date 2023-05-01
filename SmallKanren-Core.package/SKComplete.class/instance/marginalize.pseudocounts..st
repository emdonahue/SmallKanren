probability
marginalize: aState pseudocounts: theCounts
	aState ifNil: [ ^ right marginalize: left pseudocounts: left pseudocounts ].
	^ right marginalize: (left likelihood < aState likelihood ifTrue: aState ifFalse: left) "Choose the most likely substitution as the representative because we must choose something."
		pseudocounts: theCounts + left pseudocounts. "Completes fold the pseudocounts down into a single sum."