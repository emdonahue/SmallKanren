accessing
pseudocounts

	^ pseudocounts ifNil: [ pseudocounts := SKPseudoCounts new ].