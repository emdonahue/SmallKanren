*SmallKanren-Core
skUnifyCons: aCons in: aState
	^ self ifEmpty: SKStream failure
		ifNotEmpty: [ :s | (aState unify: aCons peek with: s peek) unify: aCons step with: s step ].