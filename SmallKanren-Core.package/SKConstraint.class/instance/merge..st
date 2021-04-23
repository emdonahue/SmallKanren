simplifying
merge: aConstraint
	"Two constraints assigned to the same Var must merge into a single constraint, simplifying as needed. A constraint told to merge with aConstraint should call its class-specific accessor to add itself to aConstraint and return the result. When a constraint has determined that it has been applied to a free var, it adds itself to the state, which results in a merge with any existing constraints already on that free var."
	self subclassResponsibility 

	