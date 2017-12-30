constraining
constrain: aConstraint
	"Used for any constraints that want to check for an Empty stream before processing additional constraints."
	^ aConstraint constrain: self