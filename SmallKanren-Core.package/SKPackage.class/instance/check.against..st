debugging
check: aVar against: aVal

	aVal isSKVar ifTrue: [ ^ self checkVar: aVal extend: aVar ].
	^ self check: aVal extend: aVar