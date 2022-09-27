adding
add: aVar constraint: aConstraint
	"Primary interface from the substitution. The constraint has been checked on the value, now it must be checked for consistency with other constraints."
	^ (self at: aVar) add: aVar constraint: aConstraint in: self