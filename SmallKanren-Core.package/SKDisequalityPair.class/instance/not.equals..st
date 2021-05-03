testing
not: aVar equals: aVal
	"Return true when this constraint confirms that aVar and aVal must not be equal."
	^ (left = aVar and: [ right = aVal ])
		or: (right = aVar and: [ left = aVal ]).