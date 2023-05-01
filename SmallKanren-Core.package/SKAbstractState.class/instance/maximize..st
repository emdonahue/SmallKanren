probability
maximize: aState
	(aState isNotNil and: [ aState likelihood > self likelihood ]) ifTrue: [ ^ aState ].