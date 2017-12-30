debugging
= aDisequalityList
	"Used for testing, not live code."
		aDisequalityList class = self class ifFalse: [ ^ false ].
	^ constraint = aDisequalityList constraint & (aDisequalityList next = next)