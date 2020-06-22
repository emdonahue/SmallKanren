generative
read: out
	^ (out ifNotEmpty: [ out first collect: [ :o | self evalAtom: o ] ]) force