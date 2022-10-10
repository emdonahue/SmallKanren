*SmallKanren-Core
skUnify: aTerm in: aState

	^ self
		  ifEmpty: [ aTerm skUnifyGround: self in: aState ]
		  ifNotEmpty: [ :s | aTerm skUnifyCons: s in: aState ]