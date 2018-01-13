checking
checkAgainst: aVar in: aState
	"which is faster, early fail streams or early fail goals? may change as we get rid of easy failing goals"
	aVar isSKVar
		ifTrue: [ ^ aState delay: aVar with: self ].
	
	"aVar isSKVar
		ifTrue: [ ^ aState delay: aVar with: self ].
	(aVar isCons and: [ aVar isNotEmpty ])
		ifFalse: [ ^ SKEmptyStream singleton ].
	self assert: [ (aState constraints includesKey: aVar) not ].
	^ self undelay: aVar bind: aState"