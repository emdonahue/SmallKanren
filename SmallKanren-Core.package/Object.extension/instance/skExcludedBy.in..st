*SmallKanren-Core
skExcludedBy: aConstraint in: aState
	"Vanilla objects just need to check if they are the excluded term, and pass or fail the State respectively."
	^ (aConstraint excludes: self) ifTrue: SKFailure singleton ifFalse: aState