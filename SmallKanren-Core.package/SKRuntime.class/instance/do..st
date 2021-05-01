enumerating
do: aBlockClosure
	| next |
	next := self .
	[ next atEnd ]
		whileFalse: [ aBlockClosure value: next peek.
			next := next next ]