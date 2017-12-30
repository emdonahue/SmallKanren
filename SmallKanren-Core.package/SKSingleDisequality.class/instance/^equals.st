debugging
= aDisequalityConstraint
	"This is only used in testing."
	aDisequalityConstraint class = self class ifFalse: [ ^ false ].
	^ left = aDisequalityConstraint left & (right = aDisequalityConstraint right)