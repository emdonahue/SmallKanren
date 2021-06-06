as yet unclassified
unifyAllBut: someVars in: aState runtime: aRuntime
	^ deltas unifyAllBut: someVars in: 
		((someVars includes: var) 
			ifTrue: aState 
			ifFalse: [ (aState unify: var with: val runtime: aRuntime) ifFailure: [ ^ SKStream failure ] ])
		runtime: aRuntime.