instance creation
fromPatternElement: anElement vars: varDict
	anElement isArray ifTrue: [ ^ self fromPattern: anElement vars: varDict ].
	(#(_ ?) includes: anElement) ifTrue: [ ^ varDict at: Object new put: SKTaggedVar new ].
	(anElement isString and: [ anElement first = $_ ]) 
		ifTrue: [ ^ varDict at: anElement allButFirst ifAbsentPut: [ SKTaggedVar new ] ].
	^ anElement.