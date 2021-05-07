*SmallKanren-Core
skUnifyCons: aCons in: aState runtime: aRuntime
	^ self ifEmpty: SKStream failure
		ifNotEmpty: [ :s | (aState unify: aCons peek with: s peek runtime: aRuntime) unify: aCons step with: s step runtime: aRuntime ].