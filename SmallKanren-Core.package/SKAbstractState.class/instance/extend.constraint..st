constraining
extend: aVar constraint: aConstraint
	"Has been checked for internal consistency with other constraints, now must be added."
	<todo> "Redundant if constraints is a dict"
	^ self constraints: ((self constraints removeKey: aVar) atKey: aVar put: aConstraint)