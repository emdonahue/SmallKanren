as yet unclassified
unifyAllBut: someVars in: aState runtime: aRuntime
	right isSKVar ifTrue: [ ^ aState ].
	(someVars includes: left) ifFalse: [ ^ aState unify: left with: right runtime: aRuntime ].
	^ aState.