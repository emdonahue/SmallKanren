enumerating
select: aBlock
	^ (aBlock value: self) ifTrue: self ifFalse: [ SKStream failure ]