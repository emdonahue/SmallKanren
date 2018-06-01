adding
insert: aVar ifAbsent: aBlock
	(first var = aVar var) ifTrue: [ ^ rest add: (first conjoin: aVar) ].
	^ (rest insert: aVar ifAbsent: aBlock) add: first