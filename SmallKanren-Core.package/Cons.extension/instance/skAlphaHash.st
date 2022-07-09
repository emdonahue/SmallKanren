*SmallKanren-Core
skAlphaHash
	^ (self collectR: [ :x | x isSKVar ifTrue: [ SKVar ] ifFalse: [x]]) hash.