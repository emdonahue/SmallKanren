reducing
merge: aConstraint
	"A constraint told to merge with aConstraint should call its class-specific accessor to add itself to aConstraint and return the result."
	self subclassResponsibility 

	