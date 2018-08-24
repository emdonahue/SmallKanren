accessing
at: nTh
	tree size >= nTh ifTrue: [ ^ tree at: nTh ].
	^ rest at: (nTh - tree size)