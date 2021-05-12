comparing
simplify: aConstraint
	"Unification constraints are never already a part of existing constraints, so they should never be simplifying new constraints."
	self shouldNotImplement.
	