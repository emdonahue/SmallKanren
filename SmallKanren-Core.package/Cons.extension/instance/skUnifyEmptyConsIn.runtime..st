*SmallKanren-Core
skUnifyEmptyConsIn: aState runtime: aRuntime
	^ self ifEmpty: aState ifNotEmpty: [ SKStream failure ].