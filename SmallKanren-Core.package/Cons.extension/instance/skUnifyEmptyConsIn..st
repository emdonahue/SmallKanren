*SmallKanren-Core
skUnifyEmptyConsIn: aState
	^ self ifEmpty: aState ifNotEmpty: [ SKEmptyStream singleton ]