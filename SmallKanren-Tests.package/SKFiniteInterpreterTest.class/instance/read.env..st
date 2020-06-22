generative
read: out env: runner
	^ (out ifNotEmpty: [ out first collect: [ :o | runner reifyNoConstraints: (self evalAtom: o) ] ])
		force