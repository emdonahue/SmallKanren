debugging
& aConstraint
	"Easy notation for combining the constraints into a MultiConstraint for testing purposes."

	^ self asMultiConstraint & aConstraint asConstraint asMultiConstraint 