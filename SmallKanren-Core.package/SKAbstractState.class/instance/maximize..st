probability
maximize: aState
	"Keep the largest state."
	(aState isNotNil and: [ aState likelihood > self likelihood ]) ifTrue: [ ^ aState ].