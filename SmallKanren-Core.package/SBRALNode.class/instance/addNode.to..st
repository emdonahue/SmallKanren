adding
addNode: anElement to: aSpine
	aSpine tree size = self size
		ifTrue: [ ^ aSpine addNode: anElement ].
	^ aSpine addLeaf: anElement.