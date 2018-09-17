accessing
at: nTh put: anElement
	| sz |
	nTh = 1
		ifTrue: [ ^ self class  root: anElement left: left right: right ].
	sz := (size + 1) // 2.
	nTh <= sz
		ifTrue: [ ^ self class root: root left: (left at: nTh - 1 put: anElement) right: right ].
	^ self class  root: root left: left right: (right at: nTh - sz put: anElement).