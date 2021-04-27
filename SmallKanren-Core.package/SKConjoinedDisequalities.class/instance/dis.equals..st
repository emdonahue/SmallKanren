testing
dis: aVar equals: aVal
	^ left = aVar & (right = aVal) or: [ self rest dis: aVar equals: aVal ].