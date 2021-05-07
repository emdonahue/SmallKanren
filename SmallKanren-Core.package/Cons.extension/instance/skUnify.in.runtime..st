*SmallKanren-Core
skUnify: aTerm in: aState runtime: aRuntime
	^ self
		ifEmpty: [ aTerm skUnifyEmptyConsIn: aState runtime: aRuntime ]
		ifNotEmpty: [ :s | aTerm skUnifyCons: s in: aState runtime: aRuntime ]