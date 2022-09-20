testing
not: aVar equals: aVal
	"Return true when this constraint confirms that aVar and aVal must not be equal."
	^ (var = aVar and: [ val = aVal ])
		or: (val = aVar and: [ var = aVal ]).