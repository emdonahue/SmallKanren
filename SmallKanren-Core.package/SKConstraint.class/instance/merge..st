simplifying
merge: aConstraint
	"Two constraints assigned to the same Var must merge into a single constraint, simplifying as needed. A constraint told to merge with aConstraint should call its class-specific accessor to add itself to aConstraint and return the result."
	self subclassResponsibility 

	