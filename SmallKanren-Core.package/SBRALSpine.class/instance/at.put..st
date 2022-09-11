accessing
at: nTh put: anElement
	"Inserting elements at indices not reached yet extends the list with placeholders."
	nTh < 1 ifTrue: [ ^ self add: anElement at: nTh ].
	tree size >= nTh "Index contained within tree in this segment"
		ifTrue: [ ^ self class tree: (tree at: nTh put: anElement) rest: rest ].
	^ self class tree: tree rest: (rest at: nTh - tree size put: anElement) .