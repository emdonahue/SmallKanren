accessing
pseudoCounts

	^ pseudocounts ifNil: [ pseudocounts := SKPseudoCounts new ].