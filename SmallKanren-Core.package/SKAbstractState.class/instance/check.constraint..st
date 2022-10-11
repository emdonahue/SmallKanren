constraining
check: aVar constraint: aConstraint
	"Primary interface from the substitution. The constraint has been checked on the value, now it must be checked for consistency with other constraints."
	^ (self constraintAt: aVar) check: aVar constraint: aConstraint in: self