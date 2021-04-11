running
run: aState
	"Run the constraint and either extend the ConstraintStore or fail aState."

	^ self constraint runAgainst: (aState walk: var) in:  aState 