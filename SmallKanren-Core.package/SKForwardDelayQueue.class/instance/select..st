enumerating
select: aBlock
	^ (aBlock value: first) ifTrue: [ (rest select: aBlock) add: first ] ifFalse: rest