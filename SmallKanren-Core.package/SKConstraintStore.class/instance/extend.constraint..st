constraintstore
extend: aVar constraint: aConstraint
	"Has been checked for internal consistency with other constraints, now must be added."
	^ self copy store: ((store removeKey: aVar) atKey: aVar put: aConstraint)