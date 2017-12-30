*SmallKanren-Core
skUnify: aTerm in: aState
	^ self
		ifEmpty: [ aTerm skUnifyEmptyConsIn: aState]
		ifNotEmpty: [ :s | aTerm skUnifyCons: s in: aState ]