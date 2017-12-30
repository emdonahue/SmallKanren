constraining
unconstrain: aVar
	"Removes the constraints on aVar once they have been checked and either discarded or simplified onto other variables."

	^ constraints unconstrain: aVar in: self