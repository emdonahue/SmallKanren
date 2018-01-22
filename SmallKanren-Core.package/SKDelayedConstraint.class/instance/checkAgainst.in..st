checking
checkAgainst: aVar in: aState
	"which is faster, early fail streams or early fail goals? may change as we get rid of easy failing goals"

	<todo>
	aVar isSKVar
		ifTrue: [ ^ aState delay: aVar with: self ].
	(aVar isCons and: [ aVar isNotEmpty ])
		ifFalse: [ ^ SKFailure singleton ].
	self assert: [ (aState constraints includesKey: aVar) not ].
	"^ aState bind: (self goal: aVar) history: nil heuristic: SKInterleaving new"
	^ self undelay: aVar bind: aState
	"Since this constraint is already removed by the time it fires, we can try to undelay the state now if it has no other delays."