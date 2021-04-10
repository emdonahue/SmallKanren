*SmallKanren-Core
skUnifyEmptyConsIn: aState
	^ self ifEmpty: aState ifNotEmpty: [ SKStream failure ].