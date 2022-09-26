*SmallKanren-Core
skUnifyCons: aCons in: aState
	^ self ifEmpty: SKStream failure
		ifNotEmpty: [ :s | (aState unify: aCons car with: s car) unify: aCons cdr with: s cdr ].