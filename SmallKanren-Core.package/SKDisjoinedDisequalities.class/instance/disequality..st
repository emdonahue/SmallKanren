accessing
disequality: aDisequalityConstraint
	"Merges disequalites together into a single DisjoinedDisequality.."

	^ self class new
		constraint: aDisequalityConstraint first;
		next: (aDisequalityConstraint prependRestTo: self)