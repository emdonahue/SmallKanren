generative
read: out env: runner
	^ (out ifNotEmpty: [ out first collect: [ :o | runner next reifyNoConstraints: (self evalAtom: o) ] ])
		force