adding
add: anElement
	^ self copy head: head; tail: (tail add: anElement).