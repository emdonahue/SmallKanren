constraining
check: aVar constraint: aConstraint
	"Primary interface from constraint system once constraint has been checked. Called to create the store."
	^ (SKConstraintStore new substitution: self) check: aVar constraint: aConstraint