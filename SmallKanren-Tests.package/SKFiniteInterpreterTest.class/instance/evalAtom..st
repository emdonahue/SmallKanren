generative
evalAtom: atom
(	interpreter vars includes: atom) ifTrue: [ ^ variables at: atom ifAbsentPut: SKVar new ].
	^ atom