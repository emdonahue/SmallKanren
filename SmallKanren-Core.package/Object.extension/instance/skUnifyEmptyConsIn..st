*SmallKanren-Core
skUnifyEmptyConsIn: aState
	"Cons is just a ground for vars and primitives."
	^ self skUnifyGround: Cons empty in: aState