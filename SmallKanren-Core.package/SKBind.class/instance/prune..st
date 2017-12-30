debugging
prune: anIndex
	^ self copy stream: (stream prune: anIndex)