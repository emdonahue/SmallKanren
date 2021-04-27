comparing
= aDisequalityConstraint
	self class = aDisequalityConstraint class ifFalse: [ ^ false ].
	^ left = aDisequalityConstraint left & (right = aDisequalityConstraint right) & (rest = aDisequalityConstraint rest).