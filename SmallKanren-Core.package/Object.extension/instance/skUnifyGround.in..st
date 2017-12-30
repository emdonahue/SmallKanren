*SmallKanren-Core
skUnifyGround: aGroundVal in: aState
	^ self = aGroundVal
		ifTrue: aState
		ifFalse: SKEmptyStream singleton