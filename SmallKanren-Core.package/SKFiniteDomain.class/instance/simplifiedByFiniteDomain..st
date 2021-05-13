merging
simplifiedByFiniteDomain: aFD
	"If none of our domain is in aFD, we are unsatisfiable. If only one element is, unify. Otherwise, preserve only the common elements that will later be the new constraint."
	^ self class domain: (domain select: [ :x | aFD includes: x ]).