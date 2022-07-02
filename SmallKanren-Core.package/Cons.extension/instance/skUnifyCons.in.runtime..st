*SmallKanren-Core
skUnifyCons: aCons in: aState runtime: aRuntime
	^ self ifEmpty: SKStream failure
		ifNotEmpty: [ :s | (aState unify: aCons car with: s car runtime: aRuntime) unify: aCons cdr with: s cdr runtime: aRuntime ].