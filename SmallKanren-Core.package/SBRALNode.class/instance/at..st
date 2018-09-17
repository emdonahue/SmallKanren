accessing
at: nTh
	| sz |
	nTh = 1
		ifTrue: [ ^ root ].
	sz := (size+ 1) // 2.
	nTh <= sz
		ifTrue: [ ^ left at: nTh - 1 ].
	^ right at: nTh - sz.