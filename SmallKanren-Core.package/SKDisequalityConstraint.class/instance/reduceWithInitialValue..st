checking
reduceWithInitialValue: aValue
	"Simplifies the constraint as much as possible when the first variable (on which this constraint is suspended) has been unified with aValue. This avoids an unnecessary walk with every check of a de constraint."
	self subclassResponsibility 
	