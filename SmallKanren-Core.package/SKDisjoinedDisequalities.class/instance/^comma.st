debugging
, aDisequality
	"Used to construct DisequalityLists for testing purposes."

	^ self class new
		constraint: aDisequality asConstraint;
		next: self