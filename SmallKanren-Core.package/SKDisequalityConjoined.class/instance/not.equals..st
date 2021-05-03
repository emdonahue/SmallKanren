testing
not: aVar equals: aVal
	^ (first not: aVar equals: aVal) or: [ self rest not: aVar equals: aVal ].