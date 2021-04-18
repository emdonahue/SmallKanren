debugging
& aConstraint
	<todo> "unnecessary if & goals automatically merge constraints into multi"
	"Easy notation for combining the constraints into a MultiConstraint for testing purposes."

	^ self asMultiConstraint & aConstraint asConstraint asMultiConstraint 