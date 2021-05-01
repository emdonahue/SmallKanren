checking
checkAgainst: aVal in: aState
	(aVal isCons and: [ aVal isNotEmpty ]) ifFalse: [ ^ SKStream failure ].
	^ aState