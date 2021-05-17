adding
add: anElement
	^ self fullClass new head: (FDSLinkedList with: anElement); tail: FDSLinkedList empty.
	