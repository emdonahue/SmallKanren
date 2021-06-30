as yet unclassified
car: aCar list: aSize o: aBlock
	|vars |
	vars := (aBlock argumentNames copyFrom: 1 to: aSize) collect: [ :n | self class tag: n].
	^ SKGuardedMultiMatch var: (aCar isSKVar ifTrue: {self. aCar} ifFalse: {self})
		pattern: (aCar cons: vars asCons) cons vars: vars block: aBlock.