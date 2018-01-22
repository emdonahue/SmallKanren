*SmallKanren-Core
skUnifyGround: aGroundVal in: aState
	^ self = aGroundVal
		ifTrue: aState
		ifFalse: SKFailure singleton