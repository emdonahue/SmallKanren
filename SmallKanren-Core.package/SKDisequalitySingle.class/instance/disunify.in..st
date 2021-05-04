checking
disunify: aVal in: aSubstitution
	"Attempt to unify aVal with val in the siubstitution. aVal has already been walked."
	^ (aSubstitution unify: aVal noWalk: (aSubstitution walk: val))