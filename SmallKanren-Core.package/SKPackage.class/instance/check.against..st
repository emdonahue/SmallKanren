debugging
check: aVar against: aVal
	self halt.
	aVal isSKVar ifTrue: [ ^ self checkVar: aVal extend: aVar ].
	^ self check: aVal extend: aVar