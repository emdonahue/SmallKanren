accessing
streams: anArray
	anArray isEmpty ifTrue: [ ^ SKStream failure.].
	anArray size = 1 ifTrue: [ ^ anArray first ].
	^ self new streams: (anArray inject: FDSQueue new into: [ :q :s | q add: s ]).