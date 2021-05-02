testing
not: aVar equals: aVal
	^ left = aVar & (right = aVal) or: [ self rest not: aVar equals: aVal ].