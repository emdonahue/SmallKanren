*SmallKanren-Core
skUnifyGround: aGroundVal in: aState
	"Ground terms simply unify with equality."
	^ self = aGroundVal
		ifTrue: aState
		ifFalse: SKStream failure.