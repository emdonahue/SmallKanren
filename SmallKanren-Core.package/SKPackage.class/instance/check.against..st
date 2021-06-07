debugging
check: aVar against: aVal 
	aVal isSKVar ifTrue: [ ^ self checkVar: aVal extend: aVar runtime: SKRuntime new ].
	^ self check: aVal extend: aVar runtime: SKRuntime new