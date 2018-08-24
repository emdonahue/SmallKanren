accessing
at: nTh
	| size |
	nTh = 1
		ifTrue: [ ^ root ].
	size := (self size + 1) // 2.
	nTh <= size
		ifTrue: [ ^ left at: nTh - 1 ].
	^ right at: nTh - size.