constraining
removeConstraint: aVar
	"Removes the constraints on aVar once they have been checked and either discarded or simplified onto other variables."

	^ constraints remove: aVar in: self