checking
checkAgainst: aVar in: aState
	<todo>
	aVar isSKVar
		ifTrue: [ ^ aState delay: aVar with: self ].
	(aVar isCons and: [ aVar isNotEmpty ])
		ifFalse: [ ^ SKEmptyStream singleton ].
	self assert: [ (aState constraints includesKey: aVar) not ].
	^ self undelay: aVar bind: aState 	"Since this constraint is already removed by the time it fires, we can try to undelay the state now if it has no other delays."