constraining
constrain: aConstraint
	"Used for any constraints that want to check for an Empty stream before processing additional constraints. May produce any type of stream, as a constraint may fail, returning an empty stream, or it may activate a suspended stream."
	^ aConstraint constrain: self