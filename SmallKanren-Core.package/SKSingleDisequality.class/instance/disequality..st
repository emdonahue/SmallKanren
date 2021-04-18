simplifying
disequality: aDisequalityConstraint
	"Merges disequalites together into a single DisjoinedDisequality.."

	^ SKDisjoinedDisequalities new
		constraint: self;
		next: aDisequalityConstraint