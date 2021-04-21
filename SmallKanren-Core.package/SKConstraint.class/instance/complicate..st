simplifying
complicate: aConstraint
	"Whereas simplify attempts to strip away all redundant information from aConstraint, complicate adds any non-redundant information to aConstraint so that it represents the union of both constraints. In most cases, that union will take the form of simplifying aConstraint and letting self represent the remainder of the constraint information elsewhere in the store."
	^ self simplify: aConstraint.