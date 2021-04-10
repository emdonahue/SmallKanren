*SmallKanren-Core
skUnifyCons: aCons in: aState
	"Cons unifies with a var just like any ground."
	^ self skUnifyGround: aCons in: aState