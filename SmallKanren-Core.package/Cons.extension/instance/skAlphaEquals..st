*SmallKanren-Core
skAlphaEquals: aTerm
	aTerm isCons ifFalse: [ ^ false ].
	
	^ (self collectR: [ :x | x isSKVar ifTrue: [ SKVar ] ifFalse: [x]])
		= (aTerm collectR: [ :x | x isSKVar ifTrue: [ SKVar ] ifFalse: [x]]).
					