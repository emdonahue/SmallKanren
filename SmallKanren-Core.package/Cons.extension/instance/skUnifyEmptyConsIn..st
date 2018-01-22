*SmallKanren-Core
skUnifyEmptyConsIn: aState
	^ self ifEmpty: aState ifNotEmpty: [ SKFailure singleton ]