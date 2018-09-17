accessing
at: nTh put: anElement
	tree size >= nTh
		ifTrue: [ ^ self class tree: (tree at: nTh put: anElement) rest: rest ].
	^ self class tree: tree rest: (rest at: nTh - tree size put: anElement) .