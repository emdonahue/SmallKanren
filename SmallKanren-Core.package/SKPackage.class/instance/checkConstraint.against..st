super
checkConstraint: aConstraint against: aValue
	"Used to check aConstraint against aValue if the current State has not failed on a previous constraint."

	^ aConstraint checkAgainst: aValue in: self